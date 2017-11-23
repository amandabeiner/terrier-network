import React from 'react';
import styled from 'styled-components';

const ProfileImage = props => {
  const ProfileCircleImage = styled.img`
    border-radius: 50%; 
    display: block;
    height: 12rem;
    margin: auto;
    position: relative;
    top: 2rem;
    z-index: 1;

    @media(min-width: 1000px){
      border-radius: 2%;
      box-shadow: 1px 2px .5rem;
      display: inline-block;
      left: -2rem;
      padding-top: 0; 
      position: relative;
      top: -2rem;
    }
  `

  return (
    <ProfileCircleImage src='https://specials-images.forbesimg.com/imageserve/5735f40da7ea4353698df276/416x416.jpg?background=000000&cropX1=259&cropX2=607&cropY1=19&cropY2=367'/>
  )
}

export default ProfileImage;
