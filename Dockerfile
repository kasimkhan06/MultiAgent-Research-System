# Use the official lightweight Python image
FROM python:3.10-slim

# Set up a new user named "user" with user ID 1000 for Hugging Face security
RUN useradd -m -u 1000 user
USER user
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH

# Set the working directory inside the container
WORKDIR $HOME/app

# Copy the requirements file and install dependencies
COPY --chown=user requirements.txt $HOME/app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r $HOME/app/requirements.txt

# Copy the rest of your application code
COPY --chown=user . $HOME/app

# Expose the default port Hugging Face looks for (7860)
EXPOSE 7860

# Run Streamlit, ensuring it listens on port 7860 and binds to 0.0.0.0
CMD ["streamlit", "run", "app.py", "--server.port=7860", "--server.address=0.0.0.0"]