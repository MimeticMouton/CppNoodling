OBJDIR := obj
BINDIR := bin
SRCDIR := src
SOURCES := $(wildcard $(SRCDIR)/*.cpp)
BINS := $(patsubst src/%.cpp,$(BINDIR)/%.out,$(SOURCES))

all: $(BINS)
$(BINDIR)/%.out:	$(SRCDIR)/%.cpp Makefile
	clang++ $< -o $@

$(BINDIR):
	mkdir -p "$(BINDIR)"
$(OBJDIR):
	mkdir -p "$(OBJDIR)"