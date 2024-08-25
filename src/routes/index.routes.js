import { Router } from "express";

import { producto } from "../controllers/index.controllers.js";

const router = Router()

router.get('/producto', producto)

 export default router