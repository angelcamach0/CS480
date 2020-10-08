# use warnings;

print "Please enter the name of the directory you wish to search: ";
my $udirectory = <STDIN>;
chomp ($udirectory);

#find $i

# open(test, "ls -la -R $udirectory");

 #system("ls -la -R $udirectory");

 #system(for i in /*; do echo "Number of inodes in $i is $(find $i | wc -l)");

system(for i in /$udirectory;do echo "Number of inodes in $i is $(find $i | wc -l)";done);

# while(<test>){

# }


exit 0;
#test
#for i in /*;do echo "Number of inodes in $i is $(find $i | wc -l)";done