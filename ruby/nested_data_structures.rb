dance_event = {
  afternoon_dance:{
    location:{
      name: 'Grant Park Pavillion',
      capacity: 400,
      floor_type: 'concrete',
      },
    djs: [
      'Dave',
      'Kevin',
      'Lauren'
      ],
    volunteers: [
      'Margaret',
      'Michelle',
      'Rachel',
      'Chris'
      ]
    },
  main_dance:{
     location:{
      name: 'Mobtown Ballroom',
      capacity: 300,
      floor_type: 'hardwood'
      },
    djs: [
      'Kevin',
      'Cate'
      ],
    volunteers: [
      'Michelle',
      'Rachel',
      'Cari',
      'Dave'
      ]
    },
  late_dance:{
     location:{
      name: 'CORE Dance Studio',
      capacity: '150',
      floor_type: 'hardwood'
      },
     djs: [
      'Dave',
      'Lauren'
      ],
     volunteers: [
      'Chris',
      'Margaret',
      'Ashley'
      ]
  }
}

p dance_event[:late_dance][:location]

p dance_event.keys

p dance_event[:late_dance][:location][:capacity]

p dance_event[:main_dance][:djs]

p dance_event[:main_dance][:djs].reverse

p dance_event[:afternoon_dance][:volunteers][0..1]
