import React from 'react';
import VoteCard from './VoteCard'

const VoteList = (props) => {

    const list = props.lang.map((L) => {
        return (
            <VoteCard key={L} text={L}/>
            )
    })

    return (
        <div style={{ position: 'fixed', left: '200px',top: '50px'}}>
            <h3>Vote Your Language!</h3>
            {list}
        </div>
    )
}

export default VoteList;