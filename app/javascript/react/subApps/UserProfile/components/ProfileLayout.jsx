import React from 'react';
import styled from 'styled-components';
import ProfileImage from './ProfileImage';
import NameHeader from './NameHeader';
import PositionHeader from './PositionHeader';

const ProfileLayout = ({ profile }) => {
  const HeroContainer = styled.div`
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

  const TextDiv = styled.div`
    @media(min-width: 1000px){
      position: absolute;
      top: 0;
      left: 20%;
    }
  `
  
  const nameString = `${profile.firstName} ${profile.lastName}`

  return (
    <div>
      <HeroContainer>
        <ProfileImage />
        <TextDiv>
          <NameHeader name={nameString}></NameHeader>
          <PositionHeader positionText={profile.position}></PositionHeader>
          <PositionHeader positionText={profile.company}></PositionHeader>
        </TextDiv>
      </HeroContainer>
    </div>
  )
}

export default ProfileLayout;
