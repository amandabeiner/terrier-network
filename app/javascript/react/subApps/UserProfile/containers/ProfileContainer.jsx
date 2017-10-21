import React, { Component } from 'react';
import ProfileLayout from '../components/ProfileLayout';

class ProfileContainer extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    return(
      <div>
        <ProfileLayout />
      </div>
    )
  }
}

export default ProfileContainer;
