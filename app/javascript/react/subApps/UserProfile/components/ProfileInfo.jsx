import React from 'react';
import styled from 'styled-components';

const ProfileInfo = ({ profile }) => {
  console.log(profile)
  const FirstName = styled.h3`
    margin: auto;
    color: white;
  `
  const LastName = styled.h3`
    margin: auto;
    color: white;
  `
  return (
    <div>
      <FirstName>{profile.firstName}</FirstName>
      <LastName>{profile.lastName}</LastName>
    </div>
  )
}

export default ProfileInfo;
