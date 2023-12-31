
#include "nndeploy/dag/edge.h"

#include "nndeploy/dag/node.h"

namespace nndeploy {
namespace dag {

base::Status Edge::construct(ParallelType paralle_type,
                             std::vector<Node *> &producers,
                             std::vector<Node *> &consumers) {
  abstact_edge_ = createEdge(paralle_type, producers, consumers);
  if (abstact_edge_ == nullptr) {
    return base::kStatusCodeErrorOutOfMemory;
  } else {
    return base::kStatusCodeOk;
  }
}

base::Status Edge::set(device::Buffer *buffer, int index, bool is_external) {
  return abstact_edge_->set(buffer, index, is_external);
}
base::Status Edge::set(device::Buffer &buffer, int index, bool is_external) {
  return abstact_edge_->set(buffer, index, is_external);
}
base::Status Edge::create(device::Device *device,
                          const device::BufferDesc &desc, int index) {
  return abstact_edge_->create(device, desc, index);
}
device::Buffer *Edge::getBuffer(const Node *comsumer) {
  return abstact_edge_->getBuffer(comsumer);
}

base::Status Edge::set(device::Mat *mat, int index, bool is_external) {
  return abstact_edge_->set(mat, index, is_external);
}
base::Status Edge::set(device::Mat &mat, int index, bool is_external) {
  return abstact_edge_->set(mat, index, is_external);
}
base::Status Edge::create(device::Device *device, const device::MatDesc &desc,
                          int index) {
  return abstact_edge_->create(device, desc, index, name_);
}
device::Mat *Edge::getMat(const Node *comsumer) {
  return abstact_edge_->getMat(comsumer);
}

#ifdef ENABLE_NNDEPLOY_OPENCV
base::Status Edge::set(cv::Mat *cv_mat, int index, bool is_external) {
  return abstact_edge_->set(cv_mat, index, is_external);
}
base::Status Edge::set(cv::Mat &cv_mat, int index, bool is_external) {
  return abstact_edge_->set(cv_mat, index, is_external);
}
cv::Mat *Edge::getCvMat(const Node *comsumer) {
  return abstact_edge_->getCvMat(comsumer);
}
#endif

base::Status Edge::set(device::Tensor *tensor, int index, bool is_external) {
  return abstact_edge_->set(tensor, index, is_external);
}
base::Status Edge::set(device::Tensor &tensor, int index, bool is_external) {
  return abstact_edge_->set(tensor, index, is_external);
}
base::Status Edge::create(device::Device *device,
                          const device::TensorDesc &desc, int index) {
  return abstact_edge_->create(device, desc, index, name_);
}
device::Tensor *Edge::getTensor(const Node *comsumer) {
  return abstact_edge_->getTensor(comsumer);
}

base::Status Edge::set(base::Param *param, int index, bool is_external) {
  return abstact_edge_->set(param, index, is_external);
}
base::Status Edge::set(base::Param &param, int index, bool is_external) {
  return abstact_edge_->set(param, index, is_external);
}
base::Param *Edge::getParam(const Node *comsumer) {
  return abstact_edge_->getParam(comsumer);
}

base::Status Edge::set(void *anything, int index, bool is_external) {
  return abstact_edge_->set(anything, index, is_external);
}
void *Edge::getAnything(const Node *comsumer) {
  return abstact_edge_->getAnything(comsumer);
}

int Edge::getIndex(const Node *comsumer) {
  return abstact_edge_->getIndex(comsumer);
}

ParallelType Edge::getParallelType() {
  return abstact_edge_->getParallelType();
}

}  // namespace dag
}  // namespace nndeploy
