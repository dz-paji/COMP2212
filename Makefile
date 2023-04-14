# 
# Rules for compiling and linking the typechecker/evaluator
#
# Type
#   make         to rebuild the executable files
#   make clean   to remove all intermediate and temporary files
#   

# Files that need to be generated from other files
DEPEND += TileTokens.hs TileGrammar.hs Eval.hs Tsl.hs

# When "make" is invoked with no arguments, we build an executable 
#  after building everything that it depends on
all: $(DEPEND) Tsl

# Build an executable for Toy interpreter
Tsl: $(DEPEND) Tsl.hs
	ghc Tsl.hs


# Generate ML files from a parser definition file
TileGrammar.hs : TileGrammar.y
	@rm -f TileGrammar.hs
	happy TileGrammar.y
	@chmod -w TileGrammar.hs

# Generate ML files from a lexer definition file
TileTokens.hs : TileTokens.x
	@rm -f TileTokens.hs
	alex TileTokens.x
	@chmod -w TileTokens.hs

# Clean up the directory
clean::
	rm -rf TileTokens.hs TileGrammar.hs *.hi *.o *.info


