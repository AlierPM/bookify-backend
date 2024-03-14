# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create a user
# user = User.create!(email: "user1@bookify.com", password: "password", password_confirmation: "password")

# seed books data
Book.create!([ 
    { title: "The Great Gatsby", author: "F. Scott Fitzgerald", 
    genre: "Classic", description: "The Great Gatsby is a novel by American author F. Scott Fitzgerald. The story takes place in 1922, during the Roaring Twenties, a time of prosperity in the United States after World War I. The book received critical acclaim and is generally considered Fitzgerald's best work. It is also widely regarded as a 'Great American Novel' and a literary classic, capturing the essence of an era.", cover_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ZJ2q4%2BZEL._SX331_BO1,204,203,200_.jpg", rental_price: 2.99, available_for_rent: true, condition: "New", user_id: user.id },
    { title: "To Kill a Mockingbird", author: "Harper Lee", 
    genre: "Classic", description: "To Kill a Mockingbird is a novel by Harper Lee published in 1960. Instantly successful, widely read in high schools and middle schools in the United States, it has become a classic of modern American literature, winning the Pulitzer Prize. The plot and characters are loosely based on Lee's observations of her family, her neighbors and an event that occurred near her hometown of Monroeville, Alabama, in 1936, when she was 10 years old.", cover_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ZJ2q4%2BZEL._SX331_BO1,204,203,200_.jpg", rental_price: 2.99, available_for_rent: true, condition: "New", user_id: user.id },
    { title: "1984", author: "George Orwell",
    genre: "Classic", description: "1984 is a dystopian social science fiction novel by English novelist George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell's ninth and final book completed in his lifetime. Thematically, 1984 centres on the consequences of totalitarianism, mass surveillance, and repressive regimentation of persons and behaviours within society.", cover_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ZJ2q4%2BZEL._SX331_BO1,204,203,200_.jpg", rental_price: 2.99, available_for_rent: true, condition: "New", user_id: user.id },
    { title: "The Catcher in the Rye", author: "J.D. Salinger",
    genre: "Classic", description: "The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adults, but is often read by adolescents for its themes of angst and alienation, and as a critique on superficiality in society. It has been translated widely.", cover_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ZJ2q4%2BZEL._SX331_BO1,204,203,200_.jpg", rental_price: 2.99, available_for_rent: true, condition: "New", user_id: user.id },
    { title: "The Grapes of Wrath", author: "John Steinbeck",
    genre: "Classic", description: "The Grapes of Wrath is an American realist novel written by John Steinbeck and published in 1939. The book won the National Book Award and Pulitzer Prize for fiction, and it was cited prominently when Steinbeck was awarded the Nobel Prize in 1962.", cover_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ZJ2q4%2BZEL._SX331_BO1,204,203,200_.jpg", rental_price: 2.99, available_for_rent: true, condition: "New", user_id: user.id },
    { title: "The Sun Also Rises", author: "Ernest Hemingway",
    genre: "Classic", description: "The Sun Also Rises is a 1926 novel by American writer Ernest Hemingway that portrays American and British expatriates who travel from Paris to the Festival of San Fermín in Pamplona to watch the running of the bulls and the bullfights. An early and enduring modernist novel, it received mixed reviews upon publication. However, Hemingway biographer Jeffrey Meyers writes that it is now 'recognized as Hemingway's greatest work'.", cover_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ZJ2q4%2BZEL._SX331_BO1,204,203,200_.jpg", rental_price: 2.99, available_for_rent: true, condition: "New", user_id: user.id },
    { title: " Brave New World", author: "Aldous Huxley",
    genre: "Classic", description: "Brave New World is a dystopian social science fiction novel by English author Aldous Huxley, written in 1931 and published in 1932. Largely set in a futuristic World State, whose citizens are environmentally engineered into an intelligence-based social hierarchy, the novel anticipates huge scientific advancements in reproductive technology, sleep-learning, psychological manipulation and classical conditioning that are combined to make a dystopian society which is challenged by only a single individual: the story's protagonist.", cover_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ZJ2q4%2BZEL._SX331_BO1,204,203,200_.jpg", rental_price: 2.99, available_for_rent: true, condition: "New", user_id: user.id },
])






