import { Router } from 'express'
import { getEducation, getJobs, getProfile, getProjects, getSocialProfile, ping } from '../controllers/index.controller.js'

const router = Router()
const API = '/api'

router.get('/ping', ping)
router.get(API+'/profile', getProfile)
router.get(API+'/social_profile', getSocialProfile)
router.get(API+'/education', getEducation)
router.get(API+'/jobs', getJobs)
router.get(API+'/projects', getProjects)

export default router