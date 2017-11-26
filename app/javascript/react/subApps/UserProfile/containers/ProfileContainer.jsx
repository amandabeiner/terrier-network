import React, { Component } from 'react';
import { connect } from 'react-redux';
import ProfileLayout from '../components/ProfileLayout';
import { getCurrentProfile } from '../actions/getProfile';

class ProfileContainer extends Component {
  constructor(props) {
    super(props)
  }

  componentDidMount(){
    console.log(this.props.match.params.id)
    this.props.getProfile(1)
  }

  render() {
    return(
      <div>
        <ProfileLayout profile={this.props.profile}/>
      </div>
    )
  }
}

const mapStateToProps = state => {
  return {
    profile: state.profile.profile,
    isFetching: state.profile.isFetching
  }
}

const mapDispatchToProps = dispatch => {
  return {
    getProfile: id => { dispatch(getCurrentProfile(id)) }
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(ProfileContainer);
