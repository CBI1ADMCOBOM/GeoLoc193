import React from 'react';
import PropTypes from 'prop-types';

const ChatNotificationBadge = ({ count }) => {
  return (
    <div style={{
      backgroundColor: count > 0 ? 'red' : 'gray',
      color: 'white',
      borderRadius: '12px',
      width: '24px',
      height: '24px',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      fontWeight: 'bold'
    }}>
      {count > 0 ? count : ''}
    </div>
  );
};

ChatNotificationBadge.propTypes = {
  count: PropTypes.number.isRequired,
};

export default ChatNotificationBadge;