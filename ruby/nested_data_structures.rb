#Once you've built it, print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple indexes or hash keys (or both) to access nested items. Try to demonstrate a few different types of access.

dance_event = {
  afternoon_dance:{
    location:{
      name: 'Grant Park Pavillion',
      capacity: 400,
      floor_type: 'concrete',
      },
    music:{
      live: nil,
      djs: [
        'Dave',
        'Kevin',
        'Lauren'
        ]
      },
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
    music:{
      live: 'Naomi and Her Handsome Devils',
      djs: [
        'Kevin'
        'Cate'
        ]
      },
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
    music:{
      live: 'Taryn Newborne and the Real Deal',
      djs: [
        'Dave',
        'Lauren'
        ]
      },
    volunteers: [
      'Chris',
      'Margaret',
      'Ashley'
      ]
  }
}