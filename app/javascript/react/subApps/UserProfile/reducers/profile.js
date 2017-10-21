import { FETCH_PROFILE, FETCHING_PROFILE } from '../actions/getProfile';

let initialState = {
  isLoading: false,
  profile: {}
}

const profile = ( state = initialState, action) => {
  switch (action.type) {
    case FETCH_PROFILE:
      const profile = { isLoading: false, profile: action.profile }
      return Object.assign({}, state, profile)
    case FETCHING_PROFILE:
      return Object.assign({}, state, { isLoading: true} )
    default:
      return state
  }  
}

export default profile;
