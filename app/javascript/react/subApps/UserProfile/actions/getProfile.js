import humps from 'humps'
import baseUrl from '../../../sharedResources/constants/baseUrl'

const FETCH_PROFILE = 'FETCH_PROFILE';
const FETCHING_PROFILE = 'FETCHING_PROFILE';

export { FETCH_PROFILE, FETCHING_PROFILE }

let fetchProfile = () => {
  return {
    type: FETCHING_PROFILE
  }
}

let fetchProfileSuccess = profile => {
  return {
    type: FETCH_PROFILE,
    profile
  }
}

let getCurrentProfile = id => dispatch => {
  dispatch(fetchProfile())
  return fetch(`${baseUrl}/api/v1/profiles/${id}`, {
    credentials: 'same-origin',
    method: 'GET',
    headers: { 'Content-Type': 'application/json' }
  })
  .then(response => { return response.json() })
  .then(profile => {
    const camelizedData = humps.camelizeKeys(profile)
    dispatch(fetchProfileSuccess(camelizedData))
  })
}

export {
  getCurrentProfile
}
