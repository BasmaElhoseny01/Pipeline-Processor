#Buffer
vlog Buffer.v

# Fetch
vlog Fetch.v
vlog MemoInst.v
vlog FD_Buffer.v

# Decode
vlog Decode.v
vlog Controle_Signal.v
vlog DE_Buffer.v

# Execute
vlog Execute.v
vlog ALUControl.v
vlog ALU.v
vlog EM_Buffer.v

# Memory
vlog MemoryStage.v
vlog Memory.v
vlog MW_Buffer.v

# Write Back
vlog WriteBack.v

# Processor
vlog Processor.v
vlog Processor_TB.v

vsim Processor_TB
# read initial Code Memory
mem load -i {./codeMemory.mem} /Processor_TB/ProcessorModule/FetchModule/instMemory/memory

# read initial Data Memory
mem load -i {./dataMemory.mem} /Processor_TB/ProcessorModule/MemoryModule/memory_inst/memory

# read initial Register File
mem load -i {./RegFile.mem} -format mti /Processor_TB/ProcessorModule/DecodeModule/RegFileModule/memory

add wave *
#run 1000
