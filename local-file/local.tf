resource "local_file" "test-file" {
  filename = "./test.txt" 
  content = "this is the first file created from terrafrom"
}