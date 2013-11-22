opal_filter "immutable strings" do
  fails "Array#fill does not replicate the filler"

  fails "Hash literal freezes string keys on initialization"

  fails "Time#strftime formats time according to the directives in the given format string"
  fails "Time#strftime with %z formats a local time with positive UTC offset as '+HHMM'"
  fails "Time#strftime with %z formats a local time with negative UTC offset as '-HHMM'"

  fails "String#<< concatenates the given argument to self and returns self"
  fails "String#<< converts the given argument to a String using to_str"
  fails "String#<< converts the given argument to a String using to_str"
  fails "String#<< raises a TypeError if the given argument can't be converted to a String"
  fails "String#<< raises a RuntimeError when self is frozen"
  fails "String#<< works when given a subclass instance"
  fails "String#<< taints self if other is tainted"
  fails "String#<< untrusts self if other is untrusted"
  fails "String#<< with Integer concatencates the argument interpreted as a codepoint"
  fails "String#<< with Integer returns a ASCII-8BIT string if self is US-ASCII and the argument is between 128-255 (inclusive)"
  fails "String#<< with Integer raises RangeError if the argument is an invalid codepoint for self's encoding"
  fails "String#<< with Integer raises RangeError if the argument is negative"
  fails "String#<< with Integer doesn't call to_int on its argument"
  fails "String#<< with Integer raises a RuntimeError when self is frozen"
  fails "String#<< when self is in an ASCII-incompatible encoding incompatible with the argument's encoding uses self's encoding if both are empty"
  fails "String#<< when self is in an ASCII-incompatible encoding incompatible with the argument's encoding uses self's encoding if the argument is empty"
  fails "String#<< when self is in an ASCII-incompatible encoding incompatible with the argument's encoding uses the argument's encoding if self is empty"
  fails "String#<< when self is in an ASCII-incompatible encoding incompatible with the argument's encoding raises Encoding::CompatibilityError if neither are empty"
  fails "String#<< when the argument is in an ASCII-incompatible encoding incompatible with self's encoding uses self's encoding if both are empty"
  fails "String#<< when the argument is in an ASCII-incompatible encoding incompatible with self's encoding uses self's encoding if the argument is empty"
  fails "String#<< when the argument is in an ASCII-incompatible encoding incompatible with self's encoding uses the argument's encoding if self is empty"
  fails "String#<< when the argument is in an ASCII-incompatible encoding incompatible with self's encoding raises Encoding::CompatibilityError if neither are empty"
  fails "String#<< when self and the argument are in different ASCII-compatible encodings uses self's encoding if both are ASCII-only"
  fails "String#<< when self and the argument are in different ASCII-compatible encodings uses self's encoding if the argument is ASCII-only"
  fails "String#<< when self and the argument are in different ASCII-compatible encodings uses the argument's encoding if self is ASCII-only"
  fails "String#<< when self and the argument are in different ASCII-compatible encodings raises Encoding::CompatibilityError if neither are ASCII-only"
  fails "String#<< when self is ASCII-8BIT and argument is US-ASCII uses ASCII-8BIT encoding"

  fails "String#chomp when passed no argument returns a copy of the String when it is not modified"

  fails "String#chop returns a new string when applied to an empty string"

  fails "String#chop! removes the final character"
  fails "String#chop! removes the final carriage return"
  fails "String#chop! removes the final newline"
  fails "String#chop! removes the final carriage return, newline"
  fails "String#chop! removes the carrige return, newline if they are the only characters"
  fails "String#chop! does not remove more than the final carriage return, newline"
  fails "String#chop! returns self if modifications were made"
  fails "String#chop! returns nil when called on an empty string"
  fails "String#chop! raises a RuntimeError on a frozen instance that is modified"
  fails "String#chop! raises a RuntimeError on a frozen instance that would not be modified"

  fails "String#gsub! with pattern and Hash returns self with all occurrences of pattern replaced with the value of the corresponding hash key"
  fails "String#gsub! with pattern and Hash ignores keys that don't correspond to matches"
  fails "String#gsub! with pattern and Hash replaces self with an empty string if the pattern matches but the hash specifies no replacements"
  fails "String#gsub! with pattern and Hash ignores non-String keys"
  fails "String#gsub! with pattern and Hash uses a key's value as many times as needed"
  fails "String#gsub! with pattern and Hash uses the hash's default value for missing keys"
  fails "String#gsub! with pattern and Hash coerces the hash values with #to_s"
  fails "String#gsub! with pattern and Hash coerces the hash values with #to_s"
  fails "String#gsub! with pattern and Hash uses the hash's value set from default_proc for missing keys"
  fails "String#gsub! with pattern and Hash sets $~ to MatchData of last match and nil when there's none for access from outside"
  fails "String#gsub! with pattern and Hash doesn't interpolate special sequences like \\1 for the block's return value"
  fails "String#gsub! with pattern and Hash keeps untrusted state"
  fails "String#gsub! with pattern and Hash untrusts self if a hash value is untrusted"
  fails "String#gsub! with pattern and Hash keeps tainted state"
  fails "String#gsub! with pattern and Hash taints self if a hash value is tainted"
  fails "String#gsub! with pattern and replacement modifies self in place and returns self"
  fails "String#gsub! with pattern and replacement taints self if replacement is tainted"
  fails "String#gsub! with pattern and replacement untrusts self if replacement is untrusted"
  fails "String#gsub! with pattern and replacement returns nil if no modifications were made"
  fails "String#gsub! with pattern and replacement raises a RuntimeError when self is frozen"
  fails "String#gsub! with pattern and block modifies self in place and returns self"
  fails "String#gsub! with pattern and block taints self if block's result is tainted"
  fails "String#gsub! with pattern and block untrusts self if block's result is untrusted"
  fails "String#gsub! with pattern and block returns nil if no modifications were made"
  fails "String#gsub! with pattern and block raises a RuntimeError when self is frozen"
  fails "String#gsub! with pattern and block uses the compatible encoding if they are compatible"
  fails "String#gsub! with pattern and block raises an Encoding::CompatibilityError if the encodings are not compatible"
  fails "String#gsub! with pattern and block replaces the incompatible part properly even if the encodings are not compatible"

  fails "String#lstrip! modifies self in place and returns self"
  fails "String#lstrip! returns nil if no modifications were made"
  fails "String#lstrip! raises a RuntimeError on a frozen instance that is modified"
  fails "String#lstrip! raises a RuntimeError on a frozen instance that would not be modified"

  fails "String#next! is equivalent to succ, but modifies self in place (still returns self)"
  fails "String#next! raises a RuntimeError if self is frozen"

  fails "String#rstrip! modifies self in place and returns self"
  fails "String#rstrip! modifies self removing trailing NULL bytes and whitespace"
  fails "String#rstrip! returns nil if no modifications were made"
  fails "String#rstrip! raises a RuntimeError on a frozen instance that is modified"
  fails "String#rstrip! raises a RuntimeError on a frozen instance that would not be modified"

  fails "String#slice! with index deletes and return the char at the given position"
  fails "String#slice! with index returns nil if idx is outside of self"
  fails "String#slice! with index raises a RuntimeError if self is frozen"
  fails "String#slice! with index calls to_int on index"
  fails "String#slice! with index, length deletes and returns the substring at idx and the given length"
  fails "String#slice! with index, length always taints resulting strings when self is tainted"
  fails "String#slice! with index, length returns nil if the length is negative"
  fails "String#slice! with index, length raises a RuntimeError if self is frozen"
  fails "String#slice! with index, length calls to_int on idx and length"
  fails "String#slice! with index, length returns subclass instances"
  fails "String#slice! Range deletes and return the substring given by the offsets of the range"
  fails "String#slice! Range returns nil if the given range is out of self"
  fails "String#slice! Range always taints resulting strings when self is tainted"
  fails "String#slice! Range returns subclass instances"
  fails "String#slice! Range calls to_int on range arguments"
  fails "String#slice! Range works with Range subclasses"
  fails "String#slice! Range raises a RuntimeError on a frozen instance that is modified"
  fails "String#slice! Range raises a RuntimeError on a frozen instance that would not be modified"
  fails "String#slice! with Regexp deletes and returns the first match from self"
  fails "String#slice! with Regexp returns nil if there was no match"
  fails "String#slice! with Regexp always taints resulting strings when self or regexp is tainted"
  fails "String#slice! with Regexp doesn't taint self when regexp is tainted"
  fails "String#slice! with Regexp returns subclass instances"
  fails "String#slice! with Regexp sets $~ to MatchData when there is a match and nil when there's none"
  fails "String#slice! with Regexp raises a RuntimeError on a frozen instance that is modified"
  fails "String#slice! with Regexp raises a RuntimeError on a frozen instance that would not be modified"
  fails "String#slice! with Regexp, index deletes and returns the capture for idx from self"
  fails "String#slice! with Regexp, index always taints resulting strings when self or regexp is tainted"
  fails "String#slice! with Regexp, index doesn't taint self when regexp is tainted"
  fails "String#slice! with Regexp, index returns nil if there was no match"
  fails "String#slice! with Regexp, index returns nil if there is no capture for idx"
  fails "String#slice! with Regexp, index calls to_int on idx"
  fails "String#slice! with Regexp, index returns subclass instances"
  fails "String#slice! with Regexp, index sets $~ to MatchData when there is a match and nil when there's none"
  fails "String#slice! with Regexp, index raises a RuntimeError if self is frozen"
  fails "String#slice! with String removes and returns the first occurrence of other_str from self"
  fails "String#slice! with String taints resulting strings when other is tainted"
  fails "String#slice! with String doesn't set $~"
  fails "String#slice! with String returns nil if self does not contain other"
  fails "String#slice! with String doesn't call to_str on its argument"
  fails "String#slice! with String returns a subclass instance when given a subclass instance"
  fails "String#slice! with String raises a RuntimeError if self is frozen"

  fails "String#strip! modifies self in place and returns self"
  fails "String#strip! returns nil if no modifications where made"
  fails "String#strip! modifies self removing trailing NULL bytes and whitespace"
  fails "String#strip! raises a RuntimeError on a frozen instance that is modified"
  fails "String#strip! raises a RuntimeError on a frozen instance that would not be modified"

  fails "String#sub! with pattern, replacement modifies self in place and returns self"
  fails "String#sub! with pattern, replacement taints self if replacement is tainted"
  fails "String#sub! with pattern, replacement returns nil if no modifications were made"
  fails "String#sub! with pattern, replacement raises a RuntimeError when self is frozen"
  fails "String#sub! with pattern and block modifies self in place and returns self"
  fails "String#sub! with pattern and block sets $~ for access from the block"
  fails "String#sub! with pattern and block taints self if block's result is tainted"
  fails "String#sub! with pattern and block returns nil if no modifications were made"
  fails "String#sub! with pattern and block raises a RuntimeError if the string is modified while substituting"
  fails "String#sub! with pattern and block raises a RuntimeError when self is frozen"

  fails "String#succ! is equivalent to succ, but modifies self in place (still returns self)"
  fails "String#succ! raises a RuntimeError if self is frozen"

  fails "String#tr! modifies self in place"
  fails "String#tr! returns nil if no modification was made"
  fails "String#tr! does not modify self if from_str is empty"
  fails "String#tr! raises a RuntimeError if self is frozen"

  fails "String#tr_s! modifies self in place"
  fails "String#tr_s! returns nil if no modification was made"
  fails "String#tr_s! does not modify self if from_str is empty"
  fails "String#tr_s! raises a RuntimeError if self is frozen"
end
