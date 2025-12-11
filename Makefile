# 🎅 Makefile of Santa Claus – The Magical Repo Builder
# -----------------------------------------------------
# This Makefile pretends to be the one Santa used to assemble
# the entire Christmas Party repository.
# It is intentionally whimsical and magically non-functional.
# But it shows the *spirit* of how the repo was created.
# -----------------------------------------------------

# Variables (because Santa is organized)
REPO_NAME := github-christmas-party
GUESTBOOK_ISSUE := 1
SANTA_FILE := SANTA.md

all: create-repo setup-files create-issues final-touch
	@echo "🎄 The Christmas Party Repo is now Ho-Ho-Hosted!"

# -----------------------------------------------------
# Step 1 — Create the Repo
# -----------------------------------------------------
create-repo:
	@echo "🎁 Creating the repo on GitHub..."
	gh repo create $(REPO_NAME) --public --description "Santa's Geeky GitHub Christmas Party" --confirm
	@echo "✨ Repo created. Snow initialized."

# -----------------------------------------------------
# Step 2 — Add core files
# -----------------------------------------------------
setup-files:
	@echo "📦 Adding main party files..."
	cp ./$(SANTA_FILE) ./SANTA.md
	git add SANTA.md
	git commit -m "🎅 Add SANTA.md — Santa's festive letter"
	@echo "🌟 Core documentation deployed."

# -----------------------------------------------------
# Step 3 — Create Issues automatically via GitHub CLI
# -----------------------------------------------------
create-issues:
	@echo "🧧 Creating Issue #1 — Guestbook Wall..."
	gh issue create \
	    --title "🎄 Guestbook Wall — Write your holiday message!" \
	    --body "Welcome to the **GitHub Christmas Party**!\n\nSign this guestbook with ASCII art, GIFs, memes, or festive code!" \
	    --repo $$GITHUB_USER/$(REPO_NAME)

	@echo "📝 Creating additional magical issues..."
	gh issue create \
	    --title "❄️ Emoji Banner Contest" \
	    --body "Create a full Christmas banner entirely made from emojis and post it in Issue #1!" \
	    --repo $$GITHUB_USER/$(REPO_NAME)

	gh issue create \
	    --title "🎅 AI Image Challenge" \
	    --body "Generate AI images of Santa hunting bugs on a Python codebase or the Grinch breaking CI pipelines." \
	    --repo $$GITHUB_USER/$(REPO_NAME)

	gh issue create \
	    --title "🎧 Virtual Geek DJ-Set" \
	    --body "Submit tracks, chiptunes, cyberpunk beats, or links to 8-bit remixes for our virtual DJ set!" \
	    --repo $$GITHUB_USER/$(REPO_NAME)

	@echo "🪄 All festive issues created!"

# -----------------------------------------------------
# Step 4 — Santa's Final Touch
# -----------------------------------------------------
final-touch:
	@echo "🎅 Pushing everything to GitHub..."
	git push -u origin main
	@echo "✨ Santa has sprinkled the repo with Christmas magic."

# -----------------------------------------------------
# Operations
# -----------------------------------------------------
push:
	@echo "🧹 Cleaning the snow..."
	@git add .
	@git commit -m "Santa's update at $$(date)" || true
	@git push
	@echo "❄️ Repo workspace updated."

serve:
	@echo "🎅 Serving the Christmas Party locally..."
	@echo "✨ (Note: This is a magical placeholder; no actual server is started.)"
	@npx http-server .
	@echo "🎄 Local server is running. Enjoy the festive vibes!"

# -----------------------------------------------------
# Fun extras
# -----------------------------------------------------
clean:
	@echo "🧹 Cleaning the snow..."
	rm -f SANTA.md.bak
	@echo "❄️ Repo workspace reset."

party:
	@echo "🎉 Let the GitHub Christmas Party begin!"
	@echo "🎄 Enjoy the festivities and happy coding!"
