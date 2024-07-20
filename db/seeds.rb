Product.create([
                 { name: "Cozy Mountain A-Frame", price: 100.0, photo: "https://via.placeholder.com/150", is_promotion: false },
                 { name: "Alpine Retreat Haven", price: 200.0, photo: "https://via.placeholder.com/150", is_promotion: true },
                 { name: "Mountain Vista Chalet", price: 300.0, photo: "https://via.placeholder.com/150", is_promotion: false }
               ])

Partner.create([
                 { name: "Nature's Nook", owner: "John Doe", color: "#FF5733", department: "Outdoor" },
                 { name: "The Haven", owner: "Jane Smith", color: "#33FF57", department: "Indoor" },
                 { name: "Mountain Majesty", owner: "Alice Johnson", color: "#3357FF", department: "Luxury" }
               ])
