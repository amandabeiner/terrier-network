import React from 'react';
import styled from 'styled-components';

const PositionHeader = ({ positionText }) => {
  const PositionHeader = styled.h4`
    font-size: 1.5rem;
    color: white;
    text-align: center;

    @media(min-width: 1000px){
      font-size: 2rem;
      text-align: left;
    }
  `

  return (
    <PositionHeader>{positionText}</PositionHeader>
  )
}

export default PositionHeader;
