import React from 'react';
import styled from 'styled-components';
import EmailIcon from '../../../sharedResources/svgs/EmailIcon';
import MessageIcon from '../../../sharedResources/svgs/MessageIcon';
import PhoneIcon from '../../../sharedResources/svgs/PhoneIcon';
import AddIcon from '../../../sharedResources/svgs/AddIcon';

const HeaderIcons = props => {
  const IconDiv = styled.div`
    fill: white;
    text-align: center;

    @media(min-width: 1000px){
      text-align: right;
      margin: 1rem 2rem;
    }

    svg {
      height: 1rem;

      &:not(:last-child){
        margin-right: 1rem;
      }
    }
  `

  return (
    <IconDiv>
      <EmailIcon />
      <MessageIcon />
    </IconDiv>
  )
}

export default HeaderIcons;
