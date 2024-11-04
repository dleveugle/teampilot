/**
 * function that generate a Promise on AJAXGETURL application process
 */
function get_Promise_Url(page, items, values, triggering_element) {
    return apex.server.process(
        'AJAXGETURL',
        {
            x01: page,
            x02: items,
            x03: values,
            x04: triggering_element
        },
        {
            dataType: "text"
        }
    );
}
/**
 * function that stringify without circular error
 */
function stringify(obj) {
  let cache = [];
  let str = JSON.stringify(obj, function(key, value) {
    if (typeof value === "object" && value !== null) {
      if (cache.indexOf(value) !== -1) {
        // Circular reference found, discard key
        return;
      }
      // Store value in our collection
      cache.push(value);
    }
    return value;
  });
  cache = null; // reset the cache
  return str;
}

/* detect class change */
// extension method:
$.fn.onClassChange = function(cb) {
  return $(this).each((_, el) => {
    new MutationObserver(mutations => {
      mutations.forEach(mutation => cb && cb(mutation.target, mutation.target.className));
    }).observe(el, {
      attributes: true,
      attributeFilter: ['class'] // only listen for class attribute changes 
    });
  });
}