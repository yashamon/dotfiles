def main [new_stem: string] {
  let f = ($env.f | str trim -c '"')
  let parsed = ($f | path parse)

  let ext = if ($parsed.extension | is-empty) {
    ""
  } else {
    $".($parsed.extension)"
  }

  let new_name = ($new_stem + $ext)
  let new_path = ($parsed.parent | path join $new_name)

  mv -- $f $new_path
}
