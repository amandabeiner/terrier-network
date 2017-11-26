import React from 'react';
import styled from 'styled-components';

const NameHeader = ({ name }) => {
  const StyledName = styled.h3`
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
  return (
    <StyledName>{name}</StyledName>
  )
}

export default NameHeader;
