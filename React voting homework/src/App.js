import React from 'react';
import VoteList from './VoteList'

const App = () => {
    const languages = ['Php', 'Python', 'Go', 'Java']
    return (
        <div>
            <VoteList lang={languages}/>
        </div>
    )
}

export default App;