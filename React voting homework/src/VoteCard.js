import React, { useState } from 'react';

const VoteCard = (props) => {
    const [count, setCount] = useState(0);

    return (
        <div className='card' style={{width:'18rem', textAlign:'center'}}>
            <div className="card-body">
                <p className="card-text" style={{float:'left', display:'inline-block'}}>{count}</p>
                <p className="card-text" style={{display:'inline-block'}}>{props.text}</p>
                <button 
                    onClick={()=>{setCount(count+1)}}
                    type="button" className="btn btn-secondary" 
                    style={{float:'right', display:'inline-block'}}>
                    Vote!
                </button>
            </div>
        </div>
    )
};

export default VoteCard;