import axios from "axios"
import { useEffect, useState } from "react"
import "./App.css"

function App() {
  const [posts, setPosts] = useState([])

  useEffect(() => {
    const fetchPosts = async () => {
      const posts = await axios.get("api/version1/posts")
      setPosts(posts.data)
    }
    fetchPosts()
  }, [])
  console.log(posts)
  return (
    <div>
      <h1>Hello world</h1>
    </div>
  )
}

export default App
