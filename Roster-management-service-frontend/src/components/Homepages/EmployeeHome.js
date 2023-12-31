import React, { useState, useEffect } from 'react';
import axios from 'axios';

function EmployeeHome({fetchedData }) {
    const [rosterDetails, setRosterDetails] = useState(null); // Initialize as null

    useEffect(() => {
        if (fetchedData.id !== undefined) {
            fetchRosterDetails();
        }
    }, [fetchedData.id]); // Include fetchedData.id as a dependency

    const handleLogout = () => {
        
        window.location.href = '/';
    };
    const fetchRosterDetails = async () => {
        try {
            const response = await axios.get(`http://localhost:8084/roster/${fetchedData.id}`);
            const rosterData = response.data; 
            console.log(rosterData);
            setRosterDetails(rosterData);
        } catch (error) {
            console.error('Failed to fetch roster details:', error);
        }
    };

    return (
        <div>
            <div style={{ position: 'relative' }}>
    <button
        className="logout-button"
        onClick={handleLogout}
        style={{
            position: 'absolute',
            top: '10px',
            right: '10px',
            backgroundColor: 'red', 
            color: 'white',
            border: 'none',
            padding: '5px 10px',
            cursor: 'pointer',
        }}
    >
        Logout
    </button>
</div>

            {rosterDetails ? (
                <div>
                    <h1>Welcome, {rosterDetails.empName}</h1>
                    <h3>Your Roster Details</h3>
                    <p>Employee ID: {rosterDetails.empid}</p>
                    <p>Date: {rosterDetails.date}</p>
                    <p>Shift Time: {rosterDetails.shift_time}</p>
                    <p>Pickup Time: {rosterDetails.pickup_time}</p>
                    <p>Drop Time: {rosterDetails.drop_time}</p>
                    <p>Vehicle Number: {rosterDetails.vehicle_Number}</p>
                </div>
            ) : (
                <p>No roster details available.</p>
            )}
        </div>
    );
}

export default EmployeeHome;
