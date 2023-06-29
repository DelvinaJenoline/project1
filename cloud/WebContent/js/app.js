/**
 * 
 */
document.getElementById('form').addEventListener('submit', function(event) {
  alert('submitted');
  console.log('submitted');
  event.preventDefault();
})