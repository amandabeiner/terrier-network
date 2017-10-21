import React from 'react';
import styled from 'styled-components';

const ProfileImage = props => {
  const ProfileDiv = styled.div`
    padding-top: 5vh;
  `

  const ProfileCircleImage = styled.img`
    border-radius: 50%; 
    display: block;
    height: 25vh;
    margin: auto;
  `

  return (
    <ProfileDiv>
      <ProfileCircleImage src='https://specials-images.forbesimg.com/imageserve/5735f40da7ea4353698df276/416x416.jpg?background=000000&cropX1=259&cropX2=607&cropY1=19&cropY2=367'/>
    </ProfileDiv>
  )
}

export default ProfileImage;
