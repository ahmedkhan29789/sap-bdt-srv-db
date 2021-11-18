module.exports = function (){
  // Register your event handlers in here, e.g....
  this.after ('READ','Books', each => {
    if (each.stock > 111) {
      each.title += ` -- 11% discount!`
    }
  })
}