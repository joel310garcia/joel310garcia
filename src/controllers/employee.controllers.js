import { pool } from "../db.js"

////////////////////////////  Obtener todos los empleados  /////////////////////////////////////////////
export const getEmployee = async (req, res) => {
    try {
        
        const [rows] = await  pool.query('SELECT * FROM employee')
        res.json(rows)
    } catch (error) {
        return res.status(500).json({
            message: 'Something goes wrong'
        })
    }
   
}
/////////////////////////////////////////////////////////////////////////

////////////////////////// Buscar empleado por ID //////////////////////////
export const getEmployee1 = async (req, res) => {
    const { id } = req.params; // Desestructurar el ID para una mejor legibilidad
  
    // Validación
    if (!id || typeof id !== 'string' || id.trim() === '') {
      return res.status(400).json({ error: 'Invalid employee ID' });
    }
  
    try {
      // Sanitizar el ID (opcional, si es necesario para mayor seguridad))
      const sanitizedId = pool.escape(id); // Usar escape si la validación permite ID no numéricas
  
      const [rows] = await pool.query('SELECT * FROM employee WHERE id = ?', [id]);
  
      if (rows.length === 0) {
        return res.status(404).json({ message: 'Employee not found' });
      }
      res.json(rows[0]);

    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'Error fetching employee' });
    }
  };
/////////////////////////////////////////////////////////////////////////

////////////////////////// Crear nuevo empleado//////////////////////////
export const createEmployee = async (req, res) => {
    const { nombre, salario } = req.body;
  
    // Validaciones
    if (!nombre || !salario) {
      return res.status(400).json({ error: 'Nombre y salario son requeridos' });
    }
  
    if (typeof nombre !== 'string') {
      return res.status(400).json({ error: 'El nombre debe ser una cadena' });
    }
  
    if (typeof salario !== 'number') {
      return res.status(400).json({ error: 'El salario debe ser un número' });
    }
  
    if (salario <= 0) {
      return res.status(400).json({ error: 'El salario debe ser mayor a cero' });
    }
  
    try {
      // Sanitización de datos (aunque MySQL ya los escapa por defecto en este caso)
      const sanitizedNombre = pool.escape(nombre);
      const sanitizedSalario = pool.escape(salario);
  
      const [rows] = await pool.query('INSERT INTO employee (nombre, salario) VALUES (?, ?)',
        [sanitizedNombre, sanitizedSalario]
      );
  
      res.status(201).json({
        id: rows.insertId,
        nombre,
        salario,
      });
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'Error al crear el empleado' });
    }
  };
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////  ELIMINANDO  ///////////////////////////////////////////
export const deleteEmployee = async (req, res) => {
    const { id } = req.params;
  
    // Validation
    if (!id || typeof id !== 'string' || id.trim() === '') {
      return res.status(400).json({ error: 'Invalid employee ID' });
    }
  
    try {
      // Sanitization (optional)
      // const sanitizedId = pool.escape(id); // Use escape if needed
  
      const [result] = await pool.query('DELETE FROM employee WHERE id = ?', [req.params.id]);
  
      if (result.affectedRows <= 0) {
        return res.status(404).json({ message: 'Employee not found' });
      }
  
      res.sendStatus(204);   
   // No content
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'Error deleting employee' });
    }
  };

//////////////////////////////////////////////////////////////////////////////
 export const updateEmployee = async(req, res) => {
    const {id} = req.params
    const {nombre, salario} = req.body

    if (!id || typeof id !== 'string' || id.trim() === '') {
        return res.status(400).json({ error: 'Invalid employee ID' });
      }

      try {
        
    
        const [result] = await pool.query('UPDATE employee SET nombre = IFNULL(?, nombre), salario = IFNULL(?, nombre) WHERE id = ?', [nombre, salario, id])
        if (result.affectedRows <= 0) {
         return res.status(404).json({ message: 'Employee not found' });
       }
    
       const [rows] = await pool.query('SELECT * FROM employee WHERE id = ?', [id])
      
        res.json(rows[0])
      } catch {
        console.error(error);
        res.status(500).json({ error: 'Error updating employee' });
      }
    
 }
//////////////////////////////////////////////////////////////////////////////

