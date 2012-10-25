# Problem description

Create a Ruby method that takes in a array of participant names and returns a Secret Santa hash, e.g.

irb> secret_santa ["Ted", "Martha", "Fran"]
 => { "Ted" => "Martha", "Martha" => "Fran", "Fran" => "Ted" }

Every participant should be the Secret Santa for exactly one other participant (though s/he should not be assigned to himself/herself) and every participant should be assigned exactly one Secret Santa.