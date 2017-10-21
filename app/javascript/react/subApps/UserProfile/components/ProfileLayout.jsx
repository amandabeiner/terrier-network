import React from 'react';
import styled from 'styled-components';
import ProfileImage from './ProfileImage';

const ProfileLayout = props => {
  let HeroContainer = styled.div`
    background: linear-gradient(to right, #cb2d3e, #ef473a);
    box-shadow: 0px 4px 6px lightgrey;
    height: 50vh;
    max-width: 1000px;
    margin: auto;
  `
  return (
    <div>
      <HeroContainer>
        <ProfileImage />
      </HeroContainer>
    </div>
  )
}

export default ProfileLayout;
