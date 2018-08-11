FROM apify/actor-node-basic

RUN apk update
RUN apk add python
RUN apk add g++ make


# Copy source code
COPY . ./

# Install default dependencies, print versions of everything
RUN npm --quiet set progress=false \
 && npm install --only=prod --no-optional \
 && echo "Installed NPM packages:" \
 && npm list \
 && echo "Node.js version:" \
 && node --version \
 && echo "NPM version:" \
 && npm --version


