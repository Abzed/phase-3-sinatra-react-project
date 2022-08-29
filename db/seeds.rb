puts "🌱 Seeding data..."

# Seed your database here
user1 = User.create(name: "Abzedizo Tet", user_type:"student", avatar:"https://icon-icons.com/icon/avatar-default-user/92824")
user2 = User.create(name: "Harriet Dee", user_type:"admin", avatar:"https://www.computerhope.com/jargon/d/defaultu.htm")
user3 = User.create(name: "nameless", user_type:"other", avatar:"https://www.kentuckysuicideprevention.org/about-us/board-members/default-welcomer/")

magazine1 = Magazine.create(
    title: "New Courses",
    description: "Moringa launching new courses. Stay tuned",
    category: "classroom",
    image: "https://media.istockphoto.com/vectors/big-new-course-sign-over-brush-strokes-background-vector-id1220641281?k=20&m=1220641281&s=612x612&w=0&h=lYSsjG-Sj2Qs8CnyNtFGX3twjjwGSCidLfAbnsqGmHk=",
    user_id: user1.id
)

magazine2 = Magazine.create(
    title: "Low Staff Retention",
    description: "Staffs are leaving left right and center",
    category: "management",
    image: "https://procurious.com/blog-content/2017/12/whymyemployeesleaving-1068x607.jpg",
    user_id: user2.id
)

magazine3 = Magazine.create(
    title: "alumni jobs",
    description: "graduates getting jobs after graduations",
    category: "admissions",
    image: "",
    user_id: user3.id
)

puts "✅ Done seeding!"
