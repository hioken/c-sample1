CC := gcc
CFLAGS := -Wall -Wextra -MMD -MP
SRCDIR := src
OBJDIR := obj
BINDIR := bin

# src内のすべての.cファイルを自動検出
SRCS := $(wildcard $(SRCDIR)/*.c)
# src/%.c の文字列を obj/%.o に変換
OBJS := $(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.o, $(SRCS))
# .o から依存関係ファイル .d のリストを生成
DEPS := $(OBJS:.o=.d)

TARGET := $(BINDIR)/app

$(TARGET): $(OBJS)
	@mkdir -p $(BINDIR)
	$(CC) $(CFLAGS) -o $@ $^

# パターンルール：src内の任意の.cからobj内の.oを生成する抽象化ルール
$(OBJDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c -o $@ $<

# コンパイル時に自動生成されたヘッダ依存関係ファイル（.d）を読み込む
-include $(DEPS)

.PHONY: clean
clean:
	rm -rf $(OBJDIR) $(BINDIR)