# Note: change this to obtain your chart data from some external source
data = [
    {
        label: 'First dataset',
        data: [
            { x: rand(30), y: rand(30), r: rand(5..15), },
            { x: rand(30), y: rand(30), r: rand(5..15), },
            { x: rand(30), y: rand(30), r: rand(5..15), },
            { x: rand(30), y: rand(30), r: rand(5..15), },
            { x: rand(30), y: rand(30), r: rand(5..15), },
        ],
        backgroundColor: '#F7464A',
        hoverBackgroundColor: '#FF6384',
    },
    {
        label: 'Second dataset',
        data: [
            { x: rand(30), y: rand(30), r: rand(5..15), },
            { x: rand(30), y: rand(30), r: rand(5..15), },
            { x: rand(30), y: rand(30), r: rand(5..15), },
            { x: rand(30), y: rand(30), r: rand(5..15), },
            { x: rand(30), y: rand(30), r: rand(5..15), },
        ],
        backgroundColor: '#46BFBD',
        hoverBackgroundColor: '#36A2EB',
    },
]
options = { }

send_event('bubblechart', { datasets: data, options: options })
