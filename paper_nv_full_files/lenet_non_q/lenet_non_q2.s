.section .text
.globl _start
_start:

/*
  # Load addresses
    li      t0, 0xc0115260     # addr1
    li      t1, 0xc04c34fc     # addr2

    # Load expected data
    li      t2, 0x00005bd8     # data1
    li      t3, 0x2640a91a     # data2

poll_loop:
    lw      t4, 0(t0)          # Load from addr1
    lw      t5, 0(t1)          # Load from addr2

    bne     t4, t2, poll_loop  # If data1 doesn't match, continue polling
    bne     t5, t3, poll_loop  # If data2 doesn't match, continue polling

    # Both match, continue execution
 //   nop                        # Placeholder for next code



    li      t0, 0x00100000      # Base address: t0 holds current memory address
    li      t1, 0               # t1 will hold the value to store (0, 1, 2, ..., 999)
    li      t2, 10           # t2 is the loop limit (1000 iterations)

store_loop:
    sw      t1, 0(t0)           # Store word t1 to address in t0
    addi    t0, t0, 4           # Increment address by 4 bytes (next word)
    addi    t1, t1, 1           # Increment data value by 1
    blt     t1, t2, store_loop  # Continue loop if t1 < 1000

    # Done storing
   // nop                         # Placeholder (you can add further code here)


*/

 li t0, 200000        # Load loop count (adjust as needed for your clock speed)

delay_loop:
    addi t0, t0, -1      # Decrement counter
    bnez t0, delay_loop  # Loop until t0 == 0


  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_0:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_1                      # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_0                         # Repeat loop if counter is not zero
exit_1:

  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c01
  li t0, 0x7004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2001
  li t0, 0x8004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1801
  li t0, 0x6004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1401
  li t0, 0x5004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2400
  li t0, 0x9000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_1:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_2                      # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_1                         # Repeat loop if counter is not zero
exit_2:

  # actual addr: 0x1c00
  li t0, 0x7000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_2:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_3                      # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_2                         # Repeat loop if counter is not zero
exit_3:

  # actual addr: 0x2000
  li t0, 0x8000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_3:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_4                      # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_3                         # Repeat loop if counter is not zero
exit_4:

  # actual addr: 0x1800
  li t0, 0x6000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_4:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_5                      # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_4                         # Repeat loop if counter is not zero
exit_5:

  # actual addr: 0x1400
  li t0, 0x5000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_5:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_6                      # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_5                         # Repeat loop if counter is not zero
exit_6:

  # actual addr: 0x2403
  li t0, 0x900c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2404
  li t0, 0x9010                               # Load address into t0
  li t1, 0x00170017                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2405
  li t0, 0x9014                               # Load address into t0
  li t1, 0x00000013                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2406
  li t0, 0x9018                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2407
  li t0, 0x901c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2408
  li t0, 0x9020                               # Load address into t0
  li t1, 0x00000300                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2409
  li t0, 0x9024                               # Load address into t0
  li t1, 0x00004800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x240a
  li t0, 0x9028                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x240b
  li t0, 0x902c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c03
  li t0, 0x700c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2003
  li t0, 0x800c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1803
  li t0, 0x600c                               # Load address into t0
  li t1, 0x00002200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1804
  li t0, 0x6010                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1805
  li t0, 0x6014                               # Load address into t0
  li t1, 0x001b001b                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1806
  li t0, 0x6018                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1807
  li t0, 0x601c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1808
  li t0, 0x6020                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1809
  li t0, 0x6024                               # Load address into t0
  li t1, 0x00000006                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180a
  li t0, 0x6028                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180b
  li t0, 0x602c                               # Load address into t0
  li t1, 0x00040004                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180c
  li t0, 0x6030                               # Load address into t0
  li t1, 0x00130000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180d
  li t0, 0x6034                               # Load address into t0
  li t1, 0x00000400                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180e
  li t0, 0x6038                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180f
  li t0, 0x603c                               # Load address into t0
  li t1, 0x00170017                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1810
  li t0, 0x6040                               # Load address into t0
  li t1, 0x00000013                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1811
  li t0, 0x6044                               # Load address into t0
  li t1, 0x0000023f                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1812
  li t0, 0x6048                               # Load address into t0
  li t1, 0x0000001b                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1813
  li t0, 0x604c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1814
  li t0, 0x6050                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1815
  li t0, 0x6054                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1816
  li t0, 0x6058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1817
  li t0, 0x605c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1818
  li t0, 0x6060                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1405
  li t0, 0x5014                               # Load address into t0
  li t1, 0x00002200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1406
  li t0, 0x5018                               # Load address into t0
  li t1, 0x00100000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1407
  li t0, 0x501c                               # Load address into t0
  li t1, 0x001b001b                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1408
  li t0, 0x5020                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1409
  li t0, 0x5024                               # Load address into t0
  li t1, 0x001b001b                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140b
  li t0, 0x502c                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140c
  li t0, 0x5030                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140d
  li t0, 0x5034                               # Load address into t0
  li t1, 0xc0010000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140e
  li t0, 0x5038                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140f
  li t0, 0x503c                               # Load address into t0
  li t1, 0xc0010000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1410
  li t0, 0x5040                               # Load address into t0
  li t1, 0x00000380                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1412
  li t0, 0x5048                               # Load address into t0
  li t1, 0x00006200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1411
  li t0, 0x5044                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1413
  li t0, 0x504c                               # Load address into t0
  li t1, 0x00010001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1416
  li t0, 0x5058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1417
  li t0, 0x505c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1418
  li t0, 0x5060                               # Load address into t0
  li t1, 0x00000006                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1419
  li t0, 0x5064                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141a
  li t0, 0x5068                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141b
  li t0, 0x506c                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141c
  li t0, 0x5070                               # Load address into t0
  li t1, 0x00000013                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141d
  li t0, 0x5074                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141e
  li t0, 0x5078                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141f
  li t0, 0x507c                               # Load address into t0
  li t1, 0xc0200000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1420
  li t0, 0x5080                               # Load address into t0
  li t1, 0x00000400                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1426
  li t0, 0x5098                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1429
  li t0, 0x50a4                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142c
  li t0, 0x50b0                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142d
  li t0, 0x50b4                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142e
  li t0, 0x50b8                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142f
  li t0, 0x50bc                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_6:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_7                      # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_6                         # Repeat loop if counter is not zero
exit_7:

  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c01
  li t0, 0x7004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2001
  li t0, 0x8004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1801
  li t0, 0x6004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1401
  li t0, 0x5004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2400
  li t0, 0x9000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_7:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_8                      # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_7                         # Repeat loop if counter is not zero
exit_8:

  # actual addr: 0x1c00
  li t0, 0x7000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_8:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_9                      # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_8                         # Repeat loop if counter is not zero
exit_9:

  # actual addr: 0x2000
  li t0, 0x8000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_9:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_10                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_9                         # Repeat loop if counter is not zero
exit_10:

  # actual addr: 0x1800
  li t0, 0x6000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_10:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_11                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_10                        # Repeat loop if counter is not zero
exit_11:

  # actual addr: 0x1400
  li t0, 0x5000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_11:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_12                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_11                        # Repeat loop if counter is not zero
exit_12:

  # actual addr: 0x2403
  li t0, 0x900c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2404
  li t0, 0x9010                               # Load address into t0
  li t1, 0x00070007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2405
  li t0, 0x9014                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2406
  li t0, 0x9018                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2407
  li t0, 0x901c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2408
  li t0, 0x9020                               # Load address into t0
  li t1, 0x00000100                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2409
  li t0, 0x9024                               # Load address into t0
  li t1, 0x00000800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x240a
  li t0, 0x9028                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x240b
  li t0, 0x902c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c03
  li t0, 0x700c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2003
  li t0, 0x800c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1803
  li t0, 0x600c                               # Load address into t0
  li t1, 0x00002200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1804
  li t0, 0x6010                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1805
  li t0, 0x6014                               # Load address into t0
  li t1, 0x000b000b                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1806
  li t0, 0x6018                               # Load address into t0
  li t1, 0x00000013                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1807
  li t0, 0x601c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1808
  li t0, 0x6020                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1809
  li t0, 0x6024                               # Load address into t0
  li t1, 0x00000005                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180a
  li t0, 0x6028                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180b
  li t0, 0x602c                               # Load address into t0
  li t1, 0x00040004                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180c
  li t0, 0x6030                               # Load address into t0
  li t1, 0x00310013                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180d
  li t0, 0x6034                               # Load address into t0
  li t1, 0x0000c380                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180e
  li t0, 0x6038                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180f
  li t0, 0x603c                               # Load address into t0
  li t1, 0x00070007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1810
  li t0, 0x6040                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1811
  li t0, 0x6044                               # Load address into t0
  li t1, 0x0000003f                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1812
  li t0, 0x6048                               # Load address into t0
  li t1, 0x0000000b                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1813
  li t0, 0x604c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1814
  li t0, 0x6050                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1815
  li t0, 0x6054                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1816
  li t0, 0x6058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1817
  li t0, 0x605c                               # Load address into t0
  li t1, 0x00010000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1818
  li t0, 0x6060                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1405
  li t0, 0x5014                               # Load address into t0
  li t1, 0x00002200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1406
  li t0, 0x5018                               # Load address into t0
  li t1, 0x00100000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1407
  li t0, 0x501c                               # Load address into t0
  li t1, 0x000b000b                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1408
  li t0, 0x5020                               # Load address into t0
  li t1, 0x00000013                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1409
  li t0, 0x5024                               # Load address into t0
  li t1, 0x000b000b                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140b
  li t0, 0x502c                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140c
  li t0, 0x5030                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140d
  li t0, 0x5034                               # Load address into t0
  li t1, 0xc0030000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140e
  li t0, 0x5038                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140f
  li t0, 0x503c                               # Load address into t0
  li t1, 0xc0030000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1410
  li t0, 0x5040                               # Load address into t0
  li t1, 0x00000180                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1412
  li t0, 0x5048                               # Load address into t0
  li t1, 0x00001200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1411
  li t0, 0x5044                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1413
  li t0, 0x504c                               # Load address into t0
  li t1, 0x00010001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1416
  li t0, 0x5058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1417
  li t0, 0x505c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1418
  li t0, 0x5060                               # Load address into t0
  li t1, 0x00000005                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1419
  li t0, 0x5064                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141a
  li t0, 0x5068                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141b
  li t0, 0x506c                               # Load address into t0
  li t1, 0x000003e7                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141c
  li t0, 0x5070                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141d
  li t0, 0x5074                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141e
  li t0, 0x5078                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141f
  li t0, 0x507c                               # Load address into t0
  li t1, 0xc0210000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1420
  li t0, 0x5080                               # Load address into t0
  li t1, 0x0000c380                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1426
  li t0, 0x5098                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1429
  li t0, 0x50a4                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142c
  li t0, 0x50b0                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142d
  li t0, 0x50b4                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142e
  li t0, 0x50b8                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142f
  li t0, 0x50bc                               # Load address into t0
  li t1, 0x00010000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_12:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_13                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_12                        # Repeat loop if counter is not zero
exit_13:

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_13:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_14                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_13                        # Repeat loop if counter is not zero
exit_14:

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_14:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_15                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_14                        # Repeat loop if counter is not zero
exit_15:

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x281c
  li t0, 0xa070                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280a
  li t0, 0xa028                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2810
  li t0, 0xa040                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2816
  li t0, 0xa058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x281c
  li t0, 0xa070                               # Load address into t0
  li t1, 0x000000a9                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2803
  li t0, 0xa00c                               # Load address into t0
  li t1, 0x00000017                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2804
  li t0, 0xa010                               # Load address into t0
  li t1, 0x00000017                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2805
  li t0, 0xa014                               # Load address into t0
  li t1, 0x00000013                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280a
  li t0, 0xa028                               # Load address into t0
  li t1, 0x0000002a                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280b
  li t0, 0xa02c                               # Load address into t0
  li t1, 0xc0201000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280c
  li t0, 0xa030                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280d
  li t0, 0xa034                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280e
  li t0, 0xa038                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2810
  li t0, 0xa040                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2816
  li t0, 0xa058                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c0f
  li t0, 0xb03c                               # Load address into t0
  li t1, 0x00000017                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c10
  li t0, 0xb040                               # Load address into t0
  li t1, 0x00000017                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c11
  li t0, 0xb044                               # Load address into t0
  li t1, 0x00000013                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c13
  li t0, 0xb04c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c12
  li t0, 0xb048                               # Load address into t0
  li t1, 0xc0020000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c14
  li t0, 0xb050                               # Load address into t0
  li t1, 0x00000300                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c15
  li t0, 0xb054                               # Load address into t0
  li t1, 0x00004800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c16
  li t0, 0xb058                               # Load address into t0
  li t1, 0x00000058                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c17
  li t0, 0xb05c                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c19
  li t0, 0xb064                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c1b
  li t0, 0xb06c                               # Load address into t0
  li t1, 0x00000053                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c20
  li t0, 0xb080                               # Load address into t0
  li t1, 0x00000053                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2c
  li t0, 0xb0b0                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2d
  li t0, 0xb0b4                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2f
  li t0, 0xb0bc                               # Load address into t0
  li t1, 0x0000000a                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c30
  li t0, 0xb0c0                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c31
  li t0, 0xb0c4                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c32
  li t0, 0xb0c8                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2802
  li t0, 0xa008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c0e
  li t0, 0xb038                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c01
  li t0, 0x7004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2001
  li t0, 0x8004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1801
  li t0, 0x6004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1401
  li t0, 0x5004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1403
  li t0, 0x500c                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000001                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_15:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_16                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_15                        # Repeat loop if counter is not zero
exit_16:

  # actual addr: 0x2402
  li t0, 0x9008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c02
  li t0, 0x7008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2002
  li t0, 0x8008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1802
  li t0, 0x6008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1404
  li t0, 0x5010                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_16:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_17                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_16                        # Repeat loop if counter is not zero
exit_17:

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00010000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_17:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_18                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_17                        # Repeat loop if counter is not zero
exit_18:

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_18:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_19                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_18                        # Repeat loop if counter is not zero
exit_19:

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x281c
  li t0, 0xa070                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280a
  li t0, 0xa028                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2810
  li t0, 0xa040                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2816
  li t0, 0xa058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x281c
  li t0, 0xa070                               # Load address into t0
  li t1, 0x000000a9                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_19:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_20                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_19                        # Repeat loop if counter is not zero
exit_20:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00040000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_20:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_21                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_20                        # Repeat loop if counter is not zero
exit_21:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00040000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_21:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_22                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_21                        # Repeat loop if counter is not zero
exit_22:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_22:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_23                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_22                        # Repeat loop if counter is not zero
exit_23:

  # actual addr: 0x2803
  li t0, 0xa00c                               # Load address into t0
  li t1, 0x00000007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2804
  li t0, 0xa010                               # Load address into t0
  li t1, 0x00000007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2805
  li t0, 0xa014                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280a
  li t0, 0xa028                               # Load address into t0
  li t1, 0x0000002a                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280b
  li t0, 0xa02c                               # Load address into t0
  li t1, 0xc0202000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280c
  li t0, 0xa030                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280d
  li t0, 0xa034                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280e
  li t0, 0xa038                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2810
  li t0, 0xa040                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2816
  li t0, 0xa058                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c0f
  li t0, 0xb03c                               # Load address into t0
  li t1, 0x00000007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c10
  li t0, 0xb040                               # Load address into t0
  li t1, 0x00000007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c11
  li t0, 0xb044                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c13
  li t0, 0xb04c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c12
  li t0, 0xb048                               # Load address into t0
  li t1, 0xc0034000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c14
  li t0, 0xb050                               # Load address into t0
  li t1, 0x00000100                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c15
  li t0, 0xb054                               # Load address into t0
  li t1, 0x00000800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c16
  li t0, 0xb058                               # Load address into t0
  li t1, 0x00000058                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c17
  li t0, 0xb05c                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c19
  li t0, 0xb064                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c1b
  li t0, 0xb06c                               # Load address into t0
  li t1, 0x00000053                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c20
  li t0, 0xb080                               # Load address into t0
  li t1, 0x00000053                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2c
  li t0, 0xb0b0                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2d
  li t0, 0xb0b4                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2f
  li t0, 0xb0bc                               # Load address into t0
  li t1, 0x0000000a                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c30
  li t0, 0xb0c0                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c31
  li t0, 0xb0c4                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c32
  li t0, 0xb0c8                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2802
  li t0, 0xa008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c0e
  li t0, 0xb038                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3401
  li t0, 0xd004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_23:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_24                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_23                        # Repeat loop if counter is not zero
exit_24:

  # actual addr: 0x3001
  li t0, 0xc004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_24:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_25                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_24                        # Repeat loop if counter is not zero
exit_25:

  # actual addr: 0x3401
  li t0, 0xd004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3001
  li t0, 0xc004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_25:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_26                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_25                        # Repeat loop if counter is not zero
exit_26:

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3003
  li t0, 0xc00c                               # Load address into t0
  li t1, 0x00000017                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3004
  li t0, 0xc010                               # Load address into t0
  li t1, 0x00000017                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3005
  li t0, 0xc014                               # Load address into t0
  li t1, 0x00000013                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3008
  li t0, 0xc020                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3007
  li t0, 0xc01c                               # Load address into t0
  li t1, 0xc0020000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3009
  li t0, 0xc024                               # Load address into t0
  li t1, 0x00000300                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300a
  li t0, 0xc028                               # Load address into t0
  li t1, 0x00004800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300c
  li t0, 0xc030                               # Load address into t0
  li t1, 0x00000002                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300b
  li t0, 0xc02c                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300d
  li t0, 0xc034                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300e
  li t0, 0xc038                               # Load address into t0
  li t1, 0x00000011                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300f
  li t0, 0xc03c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3010
  li t0, 0xc040                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3403
  li t0, 0xd00c                               # Load address into t0
  li t1, 0x00000017                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3404
  li t0, 0xd010                               # Load address into t0
  li t1, 0x00000017                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3405
  li t0, 0xd014                               # Load address into t0
  li t1, 0x00000013                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3406
  li t0, 0xd018                               # Load address into t0
  li t1, 0x0000000b                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3407
  li t0, 0xd01c                               # Load address into t0
  li t1, 0x0000000b                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3408
  li t0, 0xd020                               # Load address into t0
  li t1, 0x00000013                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3409
  li t0, 0xd024                               # Load address into t0
  li t1, 0x00000011                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x340b
  li t0, 0xd02c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x340c
  li t0, 0xd030                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x340d
  li t0, 0xd034                               # Load address into t0
  li t1, 0x00110101                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x340e
  li t0, 0xd038                               # Load address into t0
  li t1, 0x00007800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x340f
  li t0, 0xd03c                               # Load address into t0
  li t1, 0x00007800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3410
  li t0, 0xd040                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3411
  li t0, 0xd044                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3412
  li t0, 0xd048                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3413
  li t0, 0xd04c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3414
  li t0, 0xd050                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3415
  li t0, 0xd054                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3416
  li t0, 0xd058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3417
  li t0, 0xd05c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341a
  li t0, 0xd068                               # Load address into t0
  li t1, 0x00000300                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341b
  li t0, 0xd06c                               # Load address into t0
  li t1, 0x00004800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341c
  li t0, 0xd070                               # Load address into t0
  li t1, 0xc0030000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341d
  li t0, 0xd074                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341e
  li t0, 0xd078                               # Load address into t0
  li t1, 0x00000180                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341f
  li t0, 0xd07c                               # Load address into t0
  li t1, 0x00001200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3420
  li t0, 0xd080                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3421
  li t0, 0xd084                               # Load address into t0
  li t1, 0x00000002                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3401
  li t0, 0xd004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_26:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_27                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_26                        # Repeat loop if counter is not zero
exit_27:

  # actual addr: 0x3001
  li t0, 0xc004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_27:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_28                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_27                        # Repeat loop if counter is not zero
exit_28:

  # actual addr: 0x3401
  li t0, 0xd004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_28:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_29                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_28                        # Repeat loop if counter is not zero
exit_29:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00010000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_29:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_30                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_29                        # Repeat loop if counter is not zero
exit_30:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00010000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_30:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_31                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_30                        # Repeat loop if counter is not zero
exit_31:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_31:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_32                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_31                        # Repeat loop if counter is not zero
exit_32:

  # actual addr: 0x3001
  li t0, 0xc004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_32:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_33                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_32                        # Repeat loop if counter is not zero
exit_33:

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3003
  li t0, 0xc00c                               # Load address into t0
  li t1, 0x00000007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3004
  li t0, 0xc010                               # Load address into t0
  li t1, 0x00000007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3005
  li t0, 0xc014                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3008
  li t0, 0xc020                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3007
  li t0, 0xc01c                               # Load address into t0
  li t1, 0xc0034000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3009
  li t0, 0xc024                               # Load address into t0
  li t1, 0x00000100                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300a
  li t0, 0xc028                               # Load address into t0
  li t1, 0x00000800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300c
  li t0, 0xc030                               # Load address into t0
  li t1, 0x00000002                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300b
  li t0, 0xc02c                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300d
  li t0, 0xc034                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300e
  li t0, 0xc038                               # Load address into t0
  li t1, 0x00000011                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x300f
  li t0, 0xc03c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3010
  li t0, 0xc040                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3403
  li t0, 0xd00c                               # Load address into t0
  li t1, 0x00000007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3404
  li t0, 0xd010                               # Load address into t0
  li t1, 0x00000007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3405
  li t0, 0xd014                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3406
  li t0, 0xd018                               # Load address into t0
  li t1, 0x00000003                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3407
  li t0, 0xd01c                               # Load address into t0
  li t1, 0x00000003                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3408
  li t0, 0xd020                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3409
  li t0, 0xd024                               # Load address into t0
  li t1, 0x00000011                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x340b
  li t0, 0xd02c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x340c
  li t0, 0xd030                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x340d
  li t0, 0xd034                               # Load address into t0
  li t1, 0x00110101                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x340e
  li t0, 0xd038                               # Load address into t0
  li t1, 0x00007800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x340f
  li t0, 0xd03c                               # Load address into t0
  li t1, 0x00007800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3410
  li t0, 0xd040                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3411
  li t0, 0xd044                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3412
  li t0, 0xd048                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3413
  li t0, 0xd04c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3414
  li t0, 0xd050                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3415
  li t0, 0xd054                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3416
  li t0, 0xd058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3417
  li t0, 0xd05c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341a
  li t0, 0xd068                               # Load address into t0
  li t1, 0x00000100                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341b
  li t0, 0xd06c                               # Load address into t0
  li t1, 0x00000800                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341c
  li t0, 0xd070                               # Load address into t0
  li t1, 0xc0036000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341d
  li t0, 0xd074                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341e
  li t0, 0xd078                               # Load address into t0
  li t1, 0x00000080                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x341f
  li t0, 0xd07c                               # Load address into t0
  li t1, 0x00000200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3420
  li t0, 0xd080                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3421
  li t0, 0xd084                               # Load address into t0
  li t1, 0x00000002                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_33:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_34                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_33                        # Repeat loop if counter is not zero
exit_34:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00100001                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_34:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_35                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_34                        # Repeat loop if counter is not zero
exit_35:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00100001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_35:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_36                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_35                        # Repeat loop if counter is not zero
exit_36:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_36:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_37                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_36                        # Repeat loop if counter is not zero
exit_37:

  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00010000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_37:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_38                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_37                        # Repeat loop if counter is not zero
exit_38:

  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c01
  li t0, 0x7004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2001
  li t0, 0x8004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1801
  li t0, 0x6004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1401
  li t0, 0x5004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2400
  li t0, 0x9000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_38:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_39                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_38                        # Repeat loop if counter is not zero
exit_39:

  # actual addr: 0x1c00
  li t0, 0x7000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_39:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_40                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_39                        # Repeat loop if counter is not zero
exit_40:

  # actual addr: 0x2000
  li t0, 0x8000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_40:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_41                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_40                        # Repeat loop if counter is not zero
exit_41:

  # actual addr: 0x1800
  li t0, 0x6000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_41:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_42                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_41                        # Repeat loop if counter is not zero
exit_42:

  # actual addr: 0x1400
  li t0, 0x5000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_42:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_43                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_42                        # Repeat loop if counter is not zero
exit_43:

  # actual addr: 0x2403
  li t0, 0x900c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2404
  li t0, 0x9010                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2405
  li t0, 0x9014                               # Load address into t0
  li t1, 0x000001f3                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2406
  li t0, 0x9018                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2407
  li t0, 0x901c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2408
  li t0, 0x9020                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2409
  li t0, 0x9024                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x240a
  li t0, 0x9028                               # Load address into t0
  li t1, 0x00010001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x240b
  li t0, 0x902c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c03
  li t0, 0x700c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2003
  li t0, 0x800c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1803
  li t0, 0x600c                               # Load address into t0
  li t1, 0x00002200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1804
  li t0, 0x6010                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1805
  li t0, 0x6014                               # Load address into t0
  li t1, 0x00030003                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1806
  li t0, 0x6018                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1807
  li t0, 0x601c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1808
  li t0, 0x6020                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1809
  li t0, 0x6024                               # Load address into t0
  li t1, 0x00000003                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180a
  li t0, 0x6028                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180b
  li t0, 0x602c                               # Load address into t0
  li t1, 0x00030003                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180c
  li t0, 0x6030                               # Load address into t0
  li t1, 0x01f30031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180d
  li t0, 0x6034                               # Load address into t0
  li t1, 0x000c3500                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180e
  li t0, 0x6038                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180f
  li t0, 0x603c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1810
  li t0, 0x6040                               # Load address into t0
  li t1, 0x000001f3                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1811
  li t0, 0x6044                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1812
  li t0, 0x6048                               # Load address into t0
  li t1, 0x00000003                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1813
  li t0, 0x604c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1814
  li t0, 0x6050                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1815
  li t0, 0x6054                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1816
  li t0, 0x6058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1817
  li t0, 0x605c                               # Load address into t0
  li t1, 0x00010000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1818
  li t0, 0x6060                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1405
  li t0, 0x5014                               # Load address into t0
  li t1, 0x00002200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1406
  li t0, 0x5018                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1407
  li t0, 0x501c                               # Load address into t0
  li t1, 0x00030003                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1408
  li t0, 0x5020                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1409
  li t0, 0x5024                               # Load address into t0
  li t1, 0x00030003                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140b
  li t0, 0x502c                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140c
  li t0, 0x5030                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140d
  li t0, 0x5034                               # Load address into t0
  li t1, 0xc0036000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140e
  li t0, 0x5038                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140f
  li t0, 0x503c                               # Load address into t0
  li t1, 0xc0036000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1410
  li t0, 0x5040                               # Load address into t0
  li t1, 0x00000080                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1412
  li t0, 0x5048                               # Load address into t0
  li t1, 0x00000200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1411
  li t0, 0x5044                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1413
  li t0, 0x504c                               # Load address into t0
  li t1, 0x00010001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1416
  li t0, 0x5058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1417
  li t0, 0x505c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1418
  li t0, 0x5060                               # Load address into t0
  li t1, 0x00000003                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1419
  li t0, 0x5064                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141a
  li t0, 0x5068                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141b
  li t0, 0x506c                               # Load address into t0
  li t1, 0x0000063f                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141c
  li t0, 0x5070                               # Load address into t0
  li t1, 0x000001f3                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141d
  li t0, 0x5074                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141e
  li t0, 0x5078                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141f
  li t0, 0x507c                               # Load address into t0
  li t1, 0xc0300000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1420
  li t0, 0x5080                               # Load address into t0
  li t1, 0x000c3500                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1426
  li t0, 0x5098                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1429
  li t0, 0x50a4                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142c
  li t0, 0x50b0                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142d
  li t0, 0x50b4                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142e
  li t0, 0x50b8                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142f
  li t0, 0x50bc                               # Load address into t0
  li t1, 0x00010000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3401
  li t0, 0xd004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3001
  li t0, 0xc004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3002
  li t0, 0xc008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3402
  li t0, 0xd008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00010001                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_43:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_44                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_43                        # Repeat loop if counter is not zero
exit_44:

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000001                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_44:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_45                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_44                        # Repeat loop if counter is not zero
exit_45:

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_45:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_46                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_45                        # Repeat loop if counter is not zero
exit_46:

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x281c
  li t0, 0xa070                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280a
  li t0, 0xa028                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2810
  li t0, 0xa040                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2816
  li t0, 0xa058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x281c
  li t0, 0xa070                               # Load address into t0
  li t1, 0x000000a9                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2803
  li t0, 0xa00c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2804
  li t0, 0xa010                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2805
  li t0, 0xa014                               # Load address into t0
  li t1, 0x000001f3                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280a
  li t0, 0xa028                               # Load address into t0
  li t1, 0x0000002a                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280b
  li t0, 0xa02c                               # Load address into t0
  li t1, 0xc0203000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280c
  li t0, 0xa030                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280d
  li t0, 0xa034                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280e
  li t0, 0xa038                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2810
  li t0, 0xa040                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2816
  li t0, 0xa058                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c0f
  li t0, 0xb03c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c10
  li t0, 0xb040                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c11
  li t0, 0xb044                               # Load address into t0
  li t1, 0x000001f3                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c13
  li t0, 0xb04c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c12
  li t0, 0xb048                               # Load address into t0
  li t1, 0xc0037000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c14
  li t0, 0xb050                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c15
  li t0, 0xb054                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c16
  li t0, 0xb058                               # Load address into t0
  li t1, 0x00000018                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c17
  li t0, 0xb05c                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c19
  li t0, 0xb064                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c1b
  li t0, 0xb06c                               # Load address into t0
  li t1, 0x00000053                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c20
  li t0, 0xb080                               # Load address into t0
  li t1, 0x00000053                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2c
  li t0, 0xb0b0                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2d
  li t0, 0xb0b4                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2f
  li t0, 0xb0bc                               # Load address into t0
  li t1, 0x0000000a                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c30
  li t0, 0xb0c0                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c31
  li t0, 0xb0c4                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c32
  li t0, 0xb0c8                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2802
  li t0, 0xa008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c0e
  li t0, 0xb038                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_46:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_47                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_46                        # Repeat loop if counter is not zero
exit_47:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000010                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_47:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_48                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_47                        # Repeat loop if counter is not zero
exit_48:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00000010                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_48:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_49                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_48                        # Repeat loop if counter is not zero
exit_49:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_49:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_50                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_49                        # Repeat loop if counter is not zero
exit_50:

  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c01
  li t0, 0x7004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2001
  li t0, 0x8004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1801
  li t0, 0x6004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1401
  li t0, 0x5004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1403
  li t0, 0x500c                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000001                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_50:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_51                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_50                        # Repeat loop if counter is not zero
exit_51:

  # actual addr: 0x2402
  li t0, 0x9008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c02
  li t0, 0x7008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2002
  li t0, 0x8008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1802
  li t0, 0x6008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1404
  li t0, 0x5010                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_51:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_52                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_51                        # Repeat loop if counter is not zero
exit_52:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00020000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_52:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_53                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_52                        # Repeat loop if counter is not zero
exit_53:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00020000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_53:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_54                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_53                        # Repeat loop if counter is not zero
exit_54:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_54:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_55                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_54                        # Repeat loop if counter is not zero
exit_55:

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_55:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_56                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_55                        # Repeat loop if counter is not zero
exit_56:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00280002                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_56:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_57                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_56                        # Repeat loop if counter is not zero
exit_57:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00280002                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_57:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_58                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_57                        # Repeat loop if counter is not zero
exit_58:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_58:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_59                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_58                        # Repeat loop if counter is not zero
exit_59:

  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000001                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_59:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_60                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_59                        # Repeat loop if counter is not zero
exit_60:

  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c01
  li t0, 0x7004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2001
  li t0, 0x8004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1801
  li t0, 0x6004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1401
  li t0, 0x5004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2400
  li t0, 0x9000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_60:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_61                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_60                        # Repeat loop if counter is not zero
exit_61:

  # actual addr: 0x1c00
  li t0, 0x7000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_61:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_62                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_61                        # Repeat loop if counter is not zero
exit_62:

  # actual addr: 0x2000
  li t0, 0x8000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_62:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_63                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_62                        # Repeat loop if counter is not zero
exit_63:

  # actual addr: 0x1800
  li t0, 0x6000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_63:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_64                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_63                        # Repeat loop if counter is not zero
exit_64:

  # actual addr: 0x1400
  li t0, 0x5000                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_64:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_65                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_64                        # Repeat loop if counter is not zero
exit_65:

  # actual addr: 0x2403
  li t0, 0x900c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2404
  li t0, 0x9010                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2405
  li t0, 0x9014                               # Load address into t0
  li t1, 0x00000009                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2406
  li t0, 0x9018                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2407
  li t0, 0x901c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2408
  li t0, 0x9020                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2409
  li t0, 0x9024                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x240a
  li t0, 0x9028                               # Load address into t0
  li t1, 0x00010001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x240b
  li t0, 0x902c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c03
  li t0, 0x700c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2003
  li t0, 0x800c                               # Load address into t0
  li t1, 0x00002000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1803
  li t0, 0x600c                               # Load address into t0
  li t1, 0x00002200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1804
  li t0, 0x6010                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1805
  li t0, 0x6014                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1806
  li t0, 0x6018                               # Load address into t0
  li t1, 0x000001f3                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1807
  li t0, 0x601c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1808
  li t0, 0x6020                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1809
  li t0, 0x6024                               # Load address into t0
  li t1, 0x00000007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180a
  li t0, 0x6028                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180b
  li t0, 0x602c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180c
  li t0, 0x6030                               # Load address into t0
  li t1, 0x000901f3                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180d
  li t0, 0x6034                               # Load address into t0
  li t1, 0x00002780                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180e
  li t0, 0x6038                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x180f
  li t0, 0x603c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1810
  li t0, 0x6040                               # Load address into t0
  li t1, 0x00000009                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1811
  li t0, 0x6044                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1812
  li t0, 0x6048                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1813
  li t0, 0x604c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1814
  li t0, 0x6050                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1815
  li t0, 0x6054                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1816
  li t0, 0x6058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1817
  li t0, 0x605c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1818
  li t0, 0x6060                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1405
  li t0, 0x5014                               # Load address into t0
  li t1, 0x00002200                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1406
  li t0, 0x5018                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1407
  li t0, 0x501c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1408
  li t0, 0x5020                               # Load address into t0
  li t1, 0x000001f3                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1409
  li t0, 0x5024                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140b
  li t0, 0x502c                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140c
  li t0, 0x5030                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140d
  li t0, 0x5034                               # Load address into t0
  li t1, 0xc0037000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140e
  li t0, 0x5038                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x140f
  li t0, 0x503c                               # Load address into t0
  li t1, 0xc0037000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1410
  li t0, 0x5040                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1412
  li t0, 0x5048                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1411
  li t0, 0x5044                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1413
  li t0, 0x504c                               # Load address into t0
  li t1, 0x00010001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1416
  li t0, 0x5058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1417
  li t0, 0x505c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1418
  li t0, 0x5060                               # Load address into t0
  li t1, 0x00000007                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1419
  li t0, 0x5064                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141a
  li t0, 0x5068                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141b
  li t0, 0x506c                               # Load address into t0
  li t1, 0x000003e7                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141c
  li t0, 0x5070                               # Load address into t0
  li t1, 0x00000009                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141d
  li t0, 0x5074                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141e
  li t0, 0x5078                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x141f
  li t0, 0x507c                               # Load address into t0
  li t1, 0xc0204000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1420
  li t0, 0x5080                               # Load address into t0
  li t1, 0x00002780                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1426
  li t0, 0x5098                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1429
  li t0, 0x50a4                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142c
  li t0, 0x50b0                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142d
  li t0, 0x50b4                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142e
  li t0, 0x50b8                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x142f
  li t0, 0x50bc                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3401
  li t0, 0xd004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3001
  li t0, 0xc004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3002
  li t0, 0xc008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x3402
  li t0, 0xd008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_65:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_66                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_65                        # Repeat loop if counter is not zero
exit_66:

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00010000                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_66:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_67                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_66                        # Repeat loop if counter is not zero
exit_67:

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_67:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_68                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_67                        # Repeat loop if counter is not zero
exit_68:

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x281c
  li t0, 0xa070                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280a
  li t0, 0xa028                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2810
  li t0, 0xa040                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2816
  li t0, 0xa058                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x281c
  li t0, 0xa070                               # Load address into t0
  li t1, 0x000000a9                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2803
  li t0, 0xa00c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2804
  li t0, 0xa010                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2805
  li t0, 0xa014                               # Load address into t0
  li t1, 0x00000009                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280a
  li t0, 0xa028                               # Load address into t0
  li t1, 0x0000002a                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280b
  li t0, 0xa02c                               # Load address into t0
  li t1, 0xc0208000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280c
  li t0, 0xa030                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280d
  li t0, 0xa034                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x280e
  li t0, 0xa038                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2810
  li t0, 0xa040                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2816
  li t0, 0xa058                               # Load address into t0
  li t1, 0x00000031                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c0f
  li t0, 0xb03c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c10
  li t0, 0xb040                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c11
  li t0, 0xb044                               # Load address into t0
  li t1, 0x00000009                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c13
  li t0, 0xb04c                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c12
  li t0, 0xb048                               # Load address into t0
  li t1, 0xc0036000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c14
  li t0, 0xb050                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c15
  li t0, 0xb054                               # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c16
  li t0, 0xb058                               # Load address into t0
  li t1, 0x00000058                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c17
  li t0, 0xb05c                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c19
  li t0, 0xb064                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c1b
  li t0, 0xb06c                               # Load address into t0
  li t1, 0x00000053                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c20
  li t0, 0xb080                               # Load address into t0
  li t1, 0x00000053                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2c
  li t0, 0xb0b0                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2d
  li t0, 0xb0b4                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c2f
  li t0, 0xb0bc                               # Load address into t0
  li t1, 0x0000000a                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c30
  li t0, 0xb0c0                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c31
  li t0, 0xb0c4                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c32
  li t0, 0xb0c8                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c01
  li t0, 0xb004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2801
  li t0, 0xa004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2802
  li t0, 0xa008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2c0e
  li t0, 0xb038                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_68:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_69                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_68                        # Repeat loop if counter is not zero
exit_69:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000020                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_69:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_70                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_69                        # Repeat loop if counter is not zero
exit_70:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00000020                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_70:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_71                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_70                        # Repeat loop if counter is not zero
exit_71:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_71:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_72                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_71                        # Repeat loop if counter is not zero
exit_72:

  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c01
  li t0, 0x7004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2001
  li t0, 0x8004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1801
  li t0, 0x6004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1401
  li t0, 0x5004                               # Load address into t0
  li t1, 0x00000000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1403
  li t0, 0x500c                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000001                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_72:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_73                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_72                        # Repeat loop if counter is not zero
exit_73:

  # actual addr: 0x2402
  li t0, 0x9008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c02
  li t0, 0x7008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2002
  li t0, 0x8008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1802
  li t0, 0x6008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1404
  li t0, 0x5010                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_73:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_74                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_73                        # Repeat loop if counter is not zero
exit_74:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00010000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_74:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_75                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_74                        # Repeat loop if counter is not zero
exit_75:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00010000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_75:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_76                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_75                        # Repeat loop if counter is not zero
exit_76:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_76:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_77                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_76                        # Repeat loop if counter is not zero
exit_77:

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_77:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_78                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_77                        # Repeat loop if counter is not zero
exit_78:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00140001                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_78:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_79                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_78                        # Repeat loop if counter is not zero
exit_79:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00140001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_79:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_80                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_79                        # Repeat loop if counter is not zero
exit_80:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_80:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_81                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_80                        # Repeat loop if counter is not zero
exit_81:

  # actual addr: 0x2401
  li t0, 0x9004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c01
  li t0, 0x7004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2001
  li t0, 0x8004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1801
  li t0, 0x6004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1401
  li t0, 0x5004                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1403
  li t0, 0x500c                               # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000001                       # Load expected value into t2
  li t3, 10                               # Load max iteration count into t3
loop_81:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_82                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_81                        # Repeat loop if counter is not zero
exit_82:

  # actual addr: 0x2402
  li t0, 0x9008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1c02
  li t0, 0x7008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x2002
  li t0, 0x8008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1802
  li t0, 0x6008                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x1404
  li t0, 0x5010                               # Load address into t0
  li t1, 0x00000001                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_82:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_83                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_82                        # Repeat loop if counter is not zero
exit_83:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00020000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_83:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_84                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_83                        # Repeat loop if counter is not zero
exit_84:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00020000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_84:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_85                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_84                        # Repeat loop if counter is not zero
exit_85:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_85:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_86                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_85                        # Repeat loop if counter is not zero
exit_86:

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_86:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_87                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_86                        # Repeat loop if counter is not zero
exit_87:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00080000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_87:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_88                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_87                        # Repeat loop if counter is not zero
exit_88:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00080000                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_88:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_89                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_88                        # Repeat loop if counter is not zero
exit_89:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_89:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_90                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_89                        # Repeat loop if counter is not zero
exit_90:

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_90:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_91                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_90                        # Repeat loop if counter is not zero
exit_91:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00200002                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_91:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_92                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_91                        # Repeat loop if counter is not zero
exit_92:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0x00200002                       # Load data into t1
  sw t1, 0(t0)                            # Write data to address

  # actual addr: 0x0001
  li t0, 0x4                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_92:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_93                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_92                        # Repeat loop if counter is not zero
exit_93:

  # actual addr: 0x0003
  li t0, 0xc                                     # Load address into t0
  li t1, 0xffffffff                       # Load mask into t1
  li t2, 0x00000000                       # Load expected value into t2
  li t3, 500000                               # Load max iteration count into t3
loop_93:
  lw t4, 0(t0)                            # Load value from address
  and t4, t4, t1                          # Perform logical AND with mask
  beq t4, t2, exit_94                     # Exit loop if values match
  addi t3, t3, -1                         # Decrement counter
  bnez t3, loop_93                        # Repeat loop if counter is not zero
exit_94:

  li a7, 10                               # Exit syscall code
  ecall                                   # Terminate program

