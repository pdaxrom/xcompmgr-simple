TARGET = xcompmgr-simple

CFLAGS = -Wall -g

CXXFLAGS = $(CFLAGS)

LIBS = -lXcomposite -lXdamage -lXfixes -lXext -lXrender -lX11

OBJS = xcompmgr-simple.o

$(TARGET): $(OBJS)
	$(CXX) -o $@ $^ $(LIBS)

clean:
	rm -f $(TARGET) $(OBJS)
