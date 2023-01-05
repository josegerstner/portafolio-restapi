import { Router } from 'express'
import { getEducation, getInfo, getJobs, getProfile, getProjects, getSocialProfile, ping } from '../controllers/index.controller.js'

const router = Router()
const API = '/api'

// APP ROUTES
router.get(API+'/profile', getProfile)
router.get(API+'/social_profile', getSocialProfile)
router.get(API+'/education', getEducation)
router.get(API+'/jobs', getJobs)
router.get(API+'/projects', getProjects)

// MESSAGE ROUTES
router.get('/ping', ping)
router.get('/api/', getInfo)
router.get('/', getInfo)

export default router