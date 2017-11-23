import React from 'react';
import styled from 'styled-components';
import ProfileImage from './ProfileImage';

const ProfileInfo = ({ profile }) => {
  const TextDiv = styled.div`
    @media(min-width: 1000px){
      position: absolute;
      top: 0;
      left: 20%;
    }
  `
  
  const NameHeader = styled.h3`
    color: white;
    display: block;
    margin-top: 2rem;
    margin-bottom: 0rem;
    font-family: 'Montserrat', sans-serif;
    font-size: 2rem;
    font-weight: 900;
    text-align: center;

    @media(min-width: 1000px){
      font-size: 3rem;
      text-align: left: 
    }
  `

  const PositionHeader = styled.h4`
    font-size: 1.5rem;
    color: white;
    text-align: center;

    @media(min-width: 1000px){
      font-size: 2rem;
      text-align: left;
    }
  `

  const nameString = `${profile.firstName} ${profile.lastName}`

  return (
    <div>
      <ProfileImage />
      <TextDiv>
        <NameHeader>{nameString}</NameHeader>
        <PositionHeader>{profile.position}</PositionHeader>
        <PositionHeader>{profile.company}</PositionHeader>
      </TextDiv>
    </div>
  )
}

export default ProfileInfo;
