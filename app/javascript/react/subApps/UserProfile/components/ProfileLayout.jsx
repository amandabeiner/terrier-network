import React from 'react';
import styled from 'styled-components';
import ProfileInfo from './ProfileInfo';

const ProfileLayout = ({ profile }) => {
  let HeroContainer = styled.div`
    background: linear-gradient(to right, #cb2d3e, #ef473a);
    box-shadow: 2px 4px 6px lightgrey;
    height: 25rem;
    max-width: 900px;
    margin: auto;
    position: relative;
    z-index: 0;

    @media(min-width: 669px){
      top: 5rem;
      height: 15rem;
    }
  `
  return (
    <div>
      <HeroContainer>
        <ProfileInfo profile={profile}/>
      </HeroContainer>
    </div>
  )
}

export default ProfileLayout;
