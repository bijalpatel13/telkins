10.times do
    Guestbook.create(name: FFaker::Name.name,
                     email: FFaker::Internet.email,
                     body: FFaker::Lorem.sentence,
                     artist: 'Thrice',
                     song: 'Anthology')
end