
examples/hello-ia32.elf:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	f3 0f 1e fb          	endbr32 
    1004:	53                   	push   %ebx
    1005:	83 ec 08             	sub    $0x8,%esp
    1008:	e8 93 00 00 00       	call   10a0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 f3 2f 00 00    	add    $0x2ff3,%ebx
    1013:	8b 83 f4 ff ff ff    	mov    -0xc(%ebx),%eax
    1019:	85 c0                	test   %eax,%eax
    101b:	74 02                	je     101f <_init+0x1f>
    101d:	ff d0                	call   *%eax
    101f:	83 c4 08             	add    $0x8,%esp
    1022:	5b                   	pop    %ebx
    1023:	c3                   	ret    

Disassembly of section .plt:

00001030 <puts@plt-0x10>:
    1030:	ff b3 04 00 00 00    	push   0x4(%ebx)
    1036:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
    103c:	00 00                	add    %al,(%eax)
	...

00001040 <puts@plt>:
    1040:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    1046:	68 00 00 00 00       	push   $0x0
    104b:	e9 e0 ff ff ff       	jmp    1030 <_init+0x30>

00001050 <__libc_start_main@plt>:
    1050:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    1056:	68 08 00 00 00       	push   $0x8
    105b:	e9 d0 ff ff ff       	jmp    1030 <_init+0x30>

Disassembly of section .text:

00001060 <_start>:
    1060:	f3 0f 1e fb          	endbr32 
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	5e                   	pop    %esi
    1067:	89 e1                	mov    %esp,%ecx
    1069:	83 e4 f0             	and    $0xfffffff0,%esp
    106c:	50                   	push   %eax
    106d:	54                   	push   %esp
    106e:	52                   	push   %edx
    106f:	e8 22 00 00 00       	call   1096 <_start+0x36>
    1074:	81 c3 8c 2f 00 00    	add    $0x2f8c,%ebx
    107a:	8d 83 50 d2 ff ff    	lea    -0x2db0(%ebx),%eax
    1080:	50                   	push   %eax
    1081:	8d 83 e0 d1 ff ff    	lea    -0x2e20(%ebx),%eax
    1087:	50                   	push   %eax
    1088:	51                   	push   %ecx
    1089:	56                   	push   %esi
    108a:	ff b3 f8 ff ff ff    	push   -0x8(%ebx)
    1090:	e8 bb ff ff ff       	call   1050 <__libc_start_main@plt>
    1095:	f4                   	hlt    
    1096:	8b 1c 24             	mov    (%esp),%ebx
    1099:	c3                   	ret    
    109a:	66 90                	xchg   %ax,%ax
    109c:	66 90                	xchg   %ax,%ax
    109e:	66 90                	xchg   %ax,%ax

000010a0 <__x86.get_pc_thunk.bx>:
    10a0:	8b 1c 24             	mov    (%esp),%ebx
    10a3:	c3                   	ret    
    10a4:	66 90                	xchg   %ax,%ax
    10a6:	66 90                	xchg   %ax,%ax
    10a8:	66 90                	xchg   %ax,%ax
    10aa:	66 90                	xchg   %ax,%ax
    10ac:	66 90                	xchg   %ax,%ax
    10ae:	66 90                	xchg   %ax,%ax

000010b0 <deregister_tm_clones>:
    10b0:	e8 e4 00 00 00       	call   1199 <__x86.get_pc_thunk.dx>
    10b5:	81 c2 4b 2f 00 00    	add    $0x2f4b,%edx
    10bb:	8d 8a 1c 00 00 00    	lea    0x1c(%edx),%ecx
    10c1:	8d 82 1c 00 00 00    	lea    0x1c(%edx),%eax
    10c7:	39 c8                	cmp    %ecx,%eax
    10c9:	74 1d                	je     10e8 <deregister_tm_clones+0x38>
    10cb:	8b 82 ec ff ff ff    	mov    -0x14(%edx),%eax
    10d1:	85 c0                	test   %eax,%eax
    10d3:	74 13                	je     10e8 <deregister_tm_clones+0x38>
    10d5:	55                   	push   %ebp
    10d6:	89 e5                	mov    %esp,%ebp
    10d8:	83 ec 14             	sub    $0x14,%esp
    10db:	51                   	push   %ecx
    10dc:	ff d0                	call   *%eax
    10de:	83 c4 10             	add    $0x10,%esp
    10e1:	c9                   	leave  
    10e2:	c3                   	ret    
    10e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10e7:	90                   	nop
    10e8:	c3                   	ret    
    10e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000010f0 <register_tm_clones>:
    10f0:	e8 a4 00 00 00       	call   1199 <__x86.get_pc_thunk.dx>
    10f5:	81 c2 0b 2f 00 00    	add    $0x2f0b,%edx
    10fb:	55                   	push   %ebp
    10fc:	89 e5                	mov    %esp,%ebp
    10fe:	53                   	push   %ebx
    10ff:	8d 8a 1c 00 00 00    	lea    0x1c(%edx),%ecx
    1105:	8d 82 1c 00 00 00    	lea    0x1c(%edx),%eax
    110b:	83 ec 04             	sub    $0x4,%esp
    110e:	29 c8                	sub    %ecx,%eax
    1110:	89 c3                	mov    %eax,%ebx
    1112:	c1 e8 1f             	shr    $0x1f,%eax
    1115:	c1 fb 02             	sar    $0x2,%ebx
    1118:	01 d8                	add    %ebx,%eax
    111a:	d1 f8                	sar    %eax
    111c:	74 14                	je     1132 <register_tm_clones+0x42>
    111e:	8b 92 fc ff ff ff    	mov    -0x4(%edx),%edx
    1124:	85 d2                	test   %edx,%edx
    1126:	74 0a                	je     1132 <register_tm_clones+0x42>
    1128:	83 ec 08             	sub    $0x8,%esp
    112b:	50                   	push   %eax
    112c:	51                   	push   %ecx
    112d:	ff d2                	call   *%edx
    112f:	83 c4 10             	add    $0x10,%esp
    1132:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1135:	c9                   	leave  
    1136:	c3                   	ret    
    1137:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    113e:	66 90                	xchg   %ax,%ax

00001140 <__do_global_dtors_aux>:
    1140:	f3 0f 1e fb          	endbr32 
    1144:	55                   	push   %ebp
    1145:	89 e5                	mov    %esp,%ebp
    1147:	53                   	push   %ebx
    1148:	e8 53 ff ff ff       	call   10a0 <__x86.get_pc_thunk.bx>
    114d:	81 c3 b3 2e 00 00    	add    $0x2eb3,%ebx
    1153:	83 ec 04             	sub    $0x4,%esp
    1156:	80 bb 1c 00 00 00 00 	cmpb   $0x0,0x1c(%ebx)
    115d:	75 28                	jne    1187 <__do_global_dtors_aux+0x47>
    115f:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
    1165:	85 c0                	test   %eax,%eax
    1167:	74 12                	je     117b <__do_global_dtors_aux+0x3b>
    1169:	83 ec 0c             	sub    $0xc,%esp
    116c:	ff b3 18 00 00 00    	push   0x18(%ebx)
    1172:	ff 93 f0 ff ff ff    	call   *-0x10(%ebx)
    1178:	83 c4 10             	add    $0x10,%esp
    117b:	e8 30 ff ff ff       	call   10b0 <deregister_tm_clones>
    1180:	c6 83 1c 00 00 00 01 	movb   $0x1,0x1c(%ebx)
    1187:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    118a:	c9                   	leave  
    118b:	c3                   	ret    
    118c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001190 <frame_dummy>:
    1190:	f3 0f 1e fb          	endbr32 
    1194:	e9 57 ff ff ff       	jmp    10f0 <register_tm_clones>

00001199 <__x86.get_pc_thunk.dx>:
    1199:	8b 14 24             	mov    (%esp),%edx
    119c:	c3                   	ret    

0000119d <main>:
    119d:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    11a1:	83 e4 f0             	and    $0xfffffff0,%esp
    11a4:	ff 71 fc             	push   -0x4(%ecx)
    11a7:	55                   	push   %ebp
    11a8:	89 e5                	mov    %esp,%ebp
    11aa:	53                   	push   %ebx
    11ab:	51                   	push   %ecx
    11ac:	e8 28 00 00 00       	call   11d9 <__x86.get_pc_thunk.ax>
    11b1:	05 4f 2e 00 00       	add    $0x2e4f,%eax
    11b6:	83 ec 0c             	sub    $0xc,%esp
    11b9:	8d 90 08 e0 ff ff    	lea    -0x1ff8(%eax),%edx
    11bf:	52                   	push   %edx
    11c0:	89 c3                	mov    %eax,%ebx
    11c2:	e8 79 fe ff ff       	call   1040 <puts@plt>
    11c7:	83 c4 10             	add    $0x10,%esp
    11ca:	b8 00 00 00 00       	mov    $0x0,%eax
    11cf:	8d 65 f8             	lea    -0x8(%ebp),%esp
    11d2:	59                   	pop    %ecx
    11d3:	5b                   	pop    %ebx
    11d4:	5d                   	pop    %ebp
    11d5:	8d 61 fc             	lea    -0x4(%ecx),%esp
    11d8:	c3                   	ret    

000011d9 <__x86.get_pc_thunk.ax>:
    11d9:	8b 04 24             	mov    (%esp),%eax
    11dc:	c3                   	ret    
    11dd:	66 90                	xchg   %ax,%ax
    11df:	90                   	nop

000011e0 <__libc_csu_init>:
    11e0:	f3 0f 1e fb          	endbr32 
    11e4:	55                   	push   %ebp
    11e5:	e8 6b 00 00 00       	call   1255 <__x86.get_pc_thunk.bp>
    11ea:	81 c5 16 2e 00 00    	add    $0x2e16,%ebp
    11f0:	57                   	push   %edi
    11f1:	56                   	push   %esi
    11f2:	53                   	push   %ebx
    11f3:	83 ec 0c             	sub    $0xc,%esp
    11f6:	89 eb                	mov    %ebp,%ebx
    11f8:	8b 7c 24 28          	mov    0x28(%esp),%edi
    11fc:	e8 ff fd ff ff       	call   1000 <_init>
    1201:	8d 9d f8 fe ff ff    	lea    -0x108(%ebp),%ebx
    1207:	8d 85 f4 fe ff ff    	lea    -0x10c(%ebp),%eax
    120d:	29 c3                	sub    %eax,%ebx
    120f:	c1 fb 02             	sar    $0x2,%ebx
    1212:	74 29                	je     123d <__libc_csu_init+0x5d>
    1214:	31 f6                	xor    %esi,%esi
    1216:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    121d:	8d 76 00             	lea    0x0(%esi),%esi
    1220:	83 ec 04             	sub    $0x4,%esp
    1223:	57                   	push   %edi
    1224:	ff 74 24 2c          	push   0x2c(%esp)
    1228:	ff 74 24 2c          	push   0x2c(%esp)
    122c:	ff 94 b5 f4 fe ff ff 	call   *-0x10c(%ebp,%esi,4)
    1233:	83 c6 01             	add    $0x1,%esi
    1236:	83 c4 10             	add    $0x10,%esp
    1239:	39 f3                	cmp    %esi,%ebx
    123b:	75 e3                	jne    1220 <__libc_csu_init+0x40>
    123d:	83 c4 0c             	add    $0xc,%esp
    1240:	5b                   	pop    %ebx
    1241:	5e                   	pop    %esi
    1242:	5f                   	pop    %edi
    1243:	5d                   	pop    %ebp
    1244:	c3                   	ret    
    1245:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    124c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001250 <__libc_csu_fini>:
    1250:	f3 0f 1e fb          	endbr32 
    1254:	c3                   	ret    

00001255 <__x86.get_pc_thunk.bp>:
    1255:	8b 2c 24             	mov    (%esp),%ebp
    1258:	c3                   	ret    

Disassembly of section .fini:

0000125c <_fini>:
    125c:	f3 0f 1e fb          	endbr32 
    1260:	53                   	push   %ebx
    1261:	83 ec 08             	sub    $0x8,%esp
    1264:	e8 37 fe ff ff       	call   10a0 <__x86.get_pc_thunk.bx>
    1269:	81 c3 97 2d 00 00    	add    $0x2d97,%ebx
    126f:	83 c4 08             	add    $0x8,%esp
    1272:	5b                   	pop    %ebx
    1273:	c3                   	ret    
