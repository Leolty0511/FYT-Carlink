.class public Ln0/c4;
.super Ly/c$a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lf1/o$c;


# static fields
.field public static final v:Ljava/lang/String;

.field public static w:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Class<",
            "+",
            "Ln0/c4;",
            ">;>;"
        }
    .end annotation
.end field

.field public static x:Z

.field public static y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[I

.field public b:Lz/b;

.field public c:Lz/b;

.field public d:Z

.field public e:Lo1/h0;

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:[I

.field public k:Z

.field public l:Z

.field public final m:[I

.field public n:I

.field public o:I

.field public final p:Ljava/lang/Runnable;

.field public q:Lo1/s;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La/f;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/customer_config.properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln0/c4;->v:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Ln0/c4;->w:Landroid/util/SparseArray;

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    .line 4
    const-class v2, Ln0/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/a;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/b;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/c;

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/d;

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/e;

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/f;

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/g;

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/h;

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/i;

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/j;

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/k;

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/l;

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/m;

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/n;

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/o;

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/p;

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/q;

    const/16 v4, 0x11

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/r;

    const/16 v4, 0x12

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/s;

    const/16 v4, 0x13

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/t;

    const/16 v4, 0x14

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/u;

    const/16 v4, 0x15

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/v;

    const/16 v4, 0x16

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/w;

    const/16 v4, 0x17

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/x;

    const/16 v4, 0x18

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/y;

    const/16 v4, 0x19

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/z;

    const/16 v4, 0x1a

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/a0;

    const/16 v4, 0x1b

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/b0;

    const/16 v4, 0x1c

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/c0;

    const/16 v4, 0x1d

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/d0;

    const/16 v4, 0x1e

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/e0;

    const/16 v4, 0x1f

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/f0;

    const/16 v4, 0x20

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/g0;

    const/16 v4, 0x21

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/h0;

    const/16 v4, 0x22

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/i0;

    const/16 v4, 0x23

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/j0;

    const/16 v4, 0x24

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/k0;

    const/16 v4, 0x25

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/l0;

    const/16 v4, 0x26

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/m0;

    const/16 v4, 0x27

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/n0;

    const/16 v4, 0x28

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/o0;

    const/16 v4, 0x29

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/p0;

    const/16 v4, 0x2a

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/q0;

    const/16 v4, 0x2b

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/r0;

    const/16 v4, 0x2c

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/s0;

    const/16 v4, 0x2d

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/t0;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/u0;

    const/16 v4, 0x2f

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/v0;

    const/16 v4, 0x30

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/w0;

    const/16 v4, 0x31

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/x0;

    const/16 v4, 0x32

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/y0;

    const/16 v4, 0x33

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/z0;

    const/16 v4, 0x34

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/a1;

    const/16 v4, 0x35

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/b1;

    const/16 v4, 0x36

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/c1;

    const/16 v4, 0x37

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/d1;

    const/16 v4, 0x38

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/e1;

    const/16 v4, 0x39

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/f1;

    const/16 v4, 0x3a

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/g1;

    const/16 v4, 0x3b

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/h1;

    const/16 v4, 0x3c

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/i1;

    const/16 v4, 0x3d

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/j1;

    const/16 v4, 0x3e

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/k1;

    const/16 v4, 0x3f

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/l1;

    const/16 v4, 0x40

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/m1;

    const/16 v4, 0x41

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/n1;

    const/16 v4, 0x42

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/o1;

    const/16 v4, 0x43

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/p1;

    const/16 v4, 0x44

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/q1;

    const/16 v4, 0x45

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/r1;

    const/16 v4, 0x46

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/s1;

    const/16 v4, 0x47

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/t1;

    const/16 v4, 0x48

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/u1;

    const/16 v4, 0x49

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/v1;

    const/16 v4, 0x4a

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/w1;

    const/16 v4, 0x4b

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/x1;

    const/16 v4, 0x4c

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/y1;

    const/16 v4, 0x4d

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/z1;

    const/16 v4, 0x4e

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/a2;

    const/16 v4, 0x4f

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/b2;

    const/16 v4, 0x50

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/c2;

    const/16 v4, 0x51

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/d2;

    const/16 v4, 0x52

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/e2;

    const/16 v4, 0x53

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/f2;

    const/16 v4, 0x54

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/g2;

    const/16 v4, 0x55

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/h2;

    const/16 v4, 0x56

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/i2;

    const/16 v4, 0x57

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/j2;

    const/16 v4, 0x58

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/k2;

    const/16 v4, 0x59

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/l2;

    const/16 v4, 0x5a

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/m2;

    const/16 v4, 0x5b

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/n2;

    const/16 v4, 0x5c

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/o2;

    const/16 v4, 0x5d

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/p2;

    const/16 v4, 0x5e

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/q2;

    const/16 v4, 0x5f

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/r2;

    const/16 v4, 0x60

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/s2;

    const/16 v4, 0x61

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/t2;

    const/16 v4, 0x62

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/u2;

    const/16 v4, 0x63

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/v2;

    const/16 v4, 0x64

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/d4;

    const/16 v4, 0x66

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/e4;

    const/16 v4, 0x67

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/f4;

    const/16 v4, 0x68

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/g4;

    const/16 v4, 0x69

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/h4;

    const/16 v4, 0x6b

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/i4;

    const/16 v4, 0x6c

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/w2;

    const/16 v4, 0x6e

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/x2;

    const/16 v4, 0x6f

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/y2;

    const/16 v4, 0x70

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/z2;

    const/16 v4, 0x71

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/a3;

    const/16 v4, 0x72

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/b3;

    const/16 v4, 0x73

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/c3;

    const/16 v4, 0x74

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/d3;

    const/16 v4, 0x76

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/e3;

    const/16 v4, 0x77

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/f3;

    const/16 v4, 0x79

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/g3;

    const/16 v4, 0x7a

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/h3;

    const/16 v4, 0x7b

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/i3;

    const/16 v4, 0x7c

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/j3;

    const/16 v4, 0x7d

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/k3;

    const/16 v4, 0x7e

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/l3;

    const/16 v4, 0x7f

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/m3;

    const/16 v4, 0x80

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/n3;

    const/16 v4, 0x81

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/o3;

    const/16 v4, 0x82

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/p3;

    const/16 v4, 0x83

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/q3;

    const/16 v4, 0x84

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/r3;

    const/16 v4, 0x85

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/s3;

    const/16 v4, 0x86

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/t3;

    const/16 v4, 0x87

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/u3;

    const/16 v4, 0x88

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/v3;

    const/16 v4, 0x89

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/w3;

    const/16 v4, 0x8a

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/x3;

    const/16 v4, 0x8b

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/y3;

    const/16 v4, 0x8c

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/z3;

    const/16 v4, 0x8d

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/a4;

    const/16 v4, 0x8e

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v1, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v2, Ln0/b4;

    const/16 v4, 0x8f

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    sput-boolean v3, Ln0/c4;->x:Z

    .line 144
    sput-object v0, Ln0/c4;->y:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ly/c$a;-><init>()V

    const/16 v0, 0x24

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Ln0/c4;->a:[I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln0/c4;->b:Lz/b;

    .line 4
    iput-object v0, p0, Ln0/c4;->c:Lz/b;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Ln0/c4;->d:Z

    .line 6
    iput v1, p0, Ln0/c4;->f:I

    .line 7
    iput-boolean v1, p0, Ln0/c4;->g:Z

    const-string v2, ""

    .line 8
    iput-object v2, p0, Ln0/c4;->h:Ljava/lang/String;

    .line 9
    iput-object v2, p0, Ln0/c4;->i:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Ln0/c4;->j:[I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Ln0/c4;->k:Z

    .line 12
    iput-boolean v1, p0, Ln0/c4;->l:Z

    .line 13
    iput v0, p0, Ln0/c4;->n:I

    iput v0, p0, Ln0/c4;->o:I

    .line 14
    new-instance v3, Ln0/c4$a;

    invoke-direct {v3, p0}, Ln0/c4$a;-><init>(Ln0/c4;)V

    iput-object v3, p0, Ln0/c4;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v3, Ln0/c4$q;

    invoke-direct {v3, p0}, Ln0/c4$q;-><init>(Ln0/c4;)V

    iput-object v3, p0, Ln0/c4;->q:Lo1/s;

    .line 16
    new-instance v3, Ln0/c4$u;

    invoke-direct {v3, p0}, Ln0/c4$u;-><init>(Ln0/c4;)V

    iput-object v3, p0, Ln0/c4;->r:Ljava/lang/Runnable;

    .line 17
    new-instance v3, Ln0/c4$v;

    invoke-direct {v3, p0}, Ln0/c4$v;-><init>(Ln0/c4;)V

    iput-object v3, p0, Ln0/c4;->s:Ljava/lang/Runnable;

    .line 18
    new-instance v3, Ln0/c4$w;

    invoke-direct {v3, p0}, Ln0/c4$w;-><init>(Ln0/c4;)V

    iput-object v3, p0, Ln0/c4;->t:Ljava/lang/Runnable;

    .line 19
    new-instance v3, Ln0/c4$k;

    invoke-direct {v3, p0}, Ln0/c4$k;-><init>(Ln0/c4;)V

    iput-object v3, p0, Ln0/c4;->u:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {p0}, Ln0/c4;->D3()V

    .line 21
    new-instance v3, Lo1/h0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customer_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Ln0/j4;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lo1/h0;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ln0/c4;->e:Lo1/h0;

    const/16 v4, 0x3f7

    .line 22
    invoke-virtual {v3, v4}, Lo1/h0;->i(I)[I

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 23
    array-length v5, v3

    if-ne v5, v4, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    .line 24
    :goto_0
    iget-object v6, p0, Ln0/c4;->j:[I

    if-nez v6, :cond_1

    .line 25
    sget-object v7, Lg/e;->a:Lg/g;

    instance-of v8, v7, Lchip/Chip;

    if-eqz v8, :cond_1

    .line 26
    check-cast v7, Lchip/Chip;

    invoke-virtual {v7}, Lchip/Chip;->B()[I

    move-result-object v6

    :cond_1
    if-nez v5, :cond_2

    if-eqz v6, :cond_2

    move-object v3, v6

    .line 27
    :cond_2
    iput-object v3, p0, Ln0/c4;->j:[I

    .line 28
    sget-object v3, La/b;->f:Lo1/d;

    iget-object v6, p0, Ln0/c4;->q:Lo1/s;

    const-string v7, "com.dofun.dofunweather.main"

    invoke-virtual {v3, v7, v6}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 29
    iget-object v6, p0, Ln0/c4;->q:Lo1/s;

    const-string v7, "com.dofun.variety"

    invoke-virtual {v3, v7, v6}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 30
    iget v6, p0, Ln0/c4;->n:I

    aput v6, v3, v1

    iget v6, p0, Ln0/c4;->o:I

    aput v6, v3, v0

    iget-object v6, p0, Ln0/c4;->j:[I

    aget v7, v6, v1

    aput v7, v3, v4

    aget v6, v6, v0

    const/4 v7, 0x3

    aput v6, v3, v7

    iput-object v3, p0, Ln0/c4;->m:[I

    if-nez v5, :cond_6

    .line 31
    sget-object v3, Lbase/Configure$Property;->U:Lbase/Configure$Property;

    invoke-virtual {v3, v2}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 33
    invoke-static {v2}, Lo1/s0;->E(Ljava/lang/String;)[I

    move-result-object v3

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===========>>> CustomerBase fan config : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " values : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sCustomerId: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Ln0/j4;->b:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AA"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_6

    move v2, v1

    .line 35
    :goto_1
    iget-object v5, p0, Ln0/c4;->m:[I

    array-length v6, v5

    if-ge v2, v6, :cond_4

    array-length v6, v3

    if-ge v2, v6, :cond_4

    .line 36
    aget v6, v3, v2

    if-ltz v6, :cond_3

    .line 37
    aget v6, v3, v2

    aput v6, v5, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38
    :cond_4
    aget v2, v5, v1

    if-ne v2, v0, :cond_5

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    invoke-virtual {p0, v2}, Ln0/c4;->e3(Z)V

    .line 39
    iget-object v2, p0, Ln0/c4;->m:[I

    aget v3, v2, v4

    aget v2, v2, v7

    invoke-virtual {p0, v3, v2}, Ln0/c4;->M3(II)V

    .line 40
    :cond_6
    sget-object v2, Lbase/Configure$Property;->i:Lbase/Configure$Property;

    invoke-virtual {v2, v1}, Lbase/Configure$Property;->d(I)I

    move-result v2

    const/16 v3, 0x7d0

    const/16 v5, -0x1f4

    if-eq v2, v0, :cond_9

    if-eq v2, v4, :cond_8

    if-eq v2, v7, :cond_7

    goto :goto_3

    .line 41
    :cond_7
    sget-object v0, Le/c;->D:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 42
    new-instance v2, Ln0/c4$s;

    invoke-direct {v2, p0}, Ln0/c4$s;-><init>(Ln0/c4;)V

    invoke-virtual {v0, v2, v5}, Lo1/v;->a(Lo1/o;I)V

    .line 43
    invoke-static {}, Le/a;->f()Lo1/o;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lo1/v;->a(Lo1/o;I)V

    goto :goto_3

    .line 44
    :cond_8
    sget-object v0, Le/c;->D:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 45
    invoke-static {}, Le/a;->g()Lo1/o;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lo1/v;->a(Lo1/o;I)V

    .line 46
    invoke-static {}, Le/a;->f()Lo1/o;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lo1/v;->a(Lo1/o;I)V

    goto :goto_3

    .line 47
    :cond_9
    sget-object v0, Le/c;->D:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 48
    new-instance v2, Ln0/c4$r;

    invoke-direct {v2, p0}, Ln0/c4$r;-><init>(Ln0/c4;)V

    invoke-virtual {v0, v2, v5}, Lo1/v;->a(Lo1/o;I)V

    .line 49
    invoke-static {}, Le/a;->f()Lo1/o;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lo1/v;->a(Lo1/o;I)V

    :goto_3
    const-string v0, "persist.fyt.ui.txz"

    .line 50
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========>>> isTxz: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXZ"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a

    .line 52
    new-instance v0, Ln0/c4$t;

    invoke-direct {v0, p0}, Ln0/c4$t;-><init>(Ln0/c4;)V

    .line 53
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Lc/e;->i(ILc/d;)V

    .line 54
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x214

    invoke-virtual {v1, v2, v0}, Lc/e;->i(ILc/d;)V

    :cond_a
    return-void
.end method

.method public static c3(I)Ln0/c4;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Ln0/c4;->w:Landroid/util/SparseArray;

    const-class v1, Ln0/a;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Ln0/c4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public A3(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public B3(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===========>>> onRunning running : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AA"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ln0/c4;->t3()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lg/e;->a:Lg/g;

    check-cast p1, Lchip/Chip;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lchip/Chip;->o(Z)V

    :goto_0
    return-void
.end method

.method public C3()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Ln0/c4;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lk0/ot;->a:Lo1/y;

    invoke-virtual {v0, p0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Ln0/c4;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Ln0/c4;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v1, p0, Ln0/c4;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Ln0/c4;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public D3()V
    .locals 0

    return-void
.end method

.method public E3(I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/c4;->e:Lo1/h0;

    invoke-virtual {v0, p1, p2}, Lo1/h0;->r(I[I)V

    return-void
.end method

.method public F3(Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Lz/a;->d:Lo1/e0;

    invoke-virtual {v0, p1}, Lo1/e0;->c(Ljava/lang/String;)I

    .line 2
    invoke-virtual {v0, p2}, Lo1/e0;->g(I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lo1/e0;->e(Z)V

    .line 4
    sget-object v1, Lz/a;->n:Lo1/f0;

    const-string v2, "RDA-Reader"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 5
    invoke-static {v2}, Lh0/e;->H(I)V

    .line 6
    new-instance v2, Lz/e;

    invoke-direct {v2}, Lz/e;-><init>()V

    sput-object v2, Lz/a;->y:Lo1/q;

    invoke-static {p1, v1, v0, v2, p2}, Lz/k;->a(Ljava/lang/String;Lo1/f0;Lo1/e0;Lo1/q;I)V

    .line 7
    sget-boolean p1, Lm1/a;->c:Z

    if-eqz p1, :cond_0

    .line 8
    sget-object p1, Lz/a;->y:Lo1/q;

    invoke-virtual {v1, v0, p1}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    const/4 p1, 0x0

    .line 9
    sput-object p1, Lz/a;->y:Lo1/q;

    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lz/a;->F:Ljava/util/ArrayList;

    new-instance p2, Ln0/c4$i;

    invoke-direct {p2, p0}, Ln0/c4$i;-><init>(Ln0/c4;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public G3(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ln0/c4;->A3(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 2
    :sswitch_0
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    instance-of v0, p1, Lmodule/sound/C32107;

    if-eqz v0, :cond_3

    const/16 v0, 0x11

    .line 4
    sput v0, Lmodule/sound/C32107;->z1:I

    const/4 v0, 0x5

    .line 5
    sput v0, Lmodule/sound/C32107;->A1:I

    .line 6
    sget v0, Ly0/f;->E:I

    invoke-virtual {p1, v0}, Lmodule/sound/AudioDevice;->l(I)V

    goto :goto_1

    .line 7
    :sswitch_1
    invoke-static {}, Lg/e;->g()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 8
    invoke-static {v0}, Ly0/h;->V(I)V

    goto :goto_1

    .line 9
    :sswitch_2
    sget p1, Ly0/f;->a:I

    const/16 v1, 0x24

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Ln0/c4;->a:[I

    sget-object v3, Ly0/d;->l:[I

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-static {}, Ly0/d;->q()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Ln0/c4;->a:[I

    sget-object v3, Ly0/b;->d:[I

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    :goto_0
    invoke-static {}, Ly0/h;->M()V

    goto :goto_1

    .line 14
    :sswitch_3
    invoke-static {}, Ln0/k4;->j()V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_3
        0x2f -> :sswitch_3
        0x43 -> :sswitch_3
        0x4c -> :sswitch_3
        0xaf -> :sswitch_2
        0x13d -> :sswitch_1
        0x15c -> :sswitch_1
        0x1a2 -> :sswitch_0
        0x1ba -> :sswitch_1
        0x1013d -> :sswitch_1
        0x10142 -> :sswitch_2
        0x10144 -> :sswitch_2
        0x1015c -> :sswitch_1
        0x2013d -> :sswitch_1
        0x20142 -> :sswitch_2
        0x20144 -> :sswitch_2
        0x2014b -> :sswitch_2
        0x2014d -> :sswitch_2
        0x2015c -> :sswitch_1
        0x3013d -> :sswitch_1
        0x3015c -> :sswitch_1
        0x4013d -> :sswitch_1
        0x4015c -> :sswitch_1
        0x5013d -> :sswitch_1
        0x5015c -> :sswitch_1
        0x6013d -> :sswitch_1
        0x7013d -> :sswitch_1
        0x7015c -> :sswitch_1
        0x8013d -> :sswitch_1
        0x8015c -> :sswitch_1
        0x9015c -> :sswitch_1
        0xa015c -> :sswitch_1
        0xb015c -> :sswitch_1
        0xc015c -> :sswitch_1
    .end sparse-switch
.end method

.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 11

    .line 1
    iget v0, p0, Ln0/c4;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string v0, "ro.fyt.realplatform"

    const-string v2, "818L"

    .line 2
    invoke-static {v0, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    instance-of v2, p1, Lmodule/sound/C2313;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lmodule/sound/AudioDevice;->S0(Z)V

    :cond_0
    const-string v0, "sys.fyt.bluetooth_type"

    const-string v2, "0"

    .line 5
    invoke-static {v0, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    instance-of v3, p1, Lmodule/sound/C7739;

    const-string v4, "8"

    const-string v5, "1"

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 9
    sget-object v0, Lmodule/sound/C7739$CHANNEL;->b:Lmodule/sound/C7739$CHANNEL;

    iget v1, v0, Lmodule/sound/C7739$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 10
    iget v0, v0, Lmodule/sound/C7739$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 11
    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->P0(Z)V

    .line 12
    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->O0(Z)V

    goto/16 :goto_2

    .line 13
    :cond_2
    :goto_0
    sget-object v0, Lmodule/sound/C7739$CHANNEL;->b:Lmodule/sound/C7739$CHANNEL;

    iget v1, v0, Lmodule/sound/C7739$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 14
    iget v0, v0, Lmodule/sound/C7739$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto/16 :goto_2

    .line 15
    :cond_3
    instance-of v3, p1, Lmodule/sound/C7739_48;

    if-eqz v3, :cond_7

    .line 16
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Ln0/c4;->f:I

    const/16 v3, 0xe

    if-ne v1, v3, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Ln0/c4;->f:I

    if-ne v0, v3, :cond_19

    .line 18
    :cond_5
    sget-object v0, Lmodule/sound/C7739_48$CHANNEL;->b:Lmodule/sound/C7739_48$CHANNEL;

    iget v1, v0, Lmodule/sound/C7739_48$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 19
    iget v0, v0, Lmodule/sound/C7739_48$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 20
    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->P0(Z)V

    .line 21
    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->O0(Z)V

    goto/16 :goto_2

    .line 22
    :cond_6
    :goto_1
    sget-object v0, Lmodule/sound/C7739_48$CHANNEL;->b:Lmodule/sound/C7739_48$CHANNEL;

    iget v1, v0, Lmodule/sound/C7739_48$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 23
    iget v0, v0, Lmodule/sound/C7739_48$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto/16 :goto_2

    .line 24
    :cond_7
    instance-of v3, p1, Lmodule/sound/C7738NOR7870TDM;

    if-eqz v3, :cond_9

    .line 25
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 26
    sget-object v0, Lmodule/sound/C7738NOR7870TDM$CHANNEL;->b:Lmodule/sound/C7738NOR7870TDM$CHANNEL;

    iget v1, v0, Lmodule/sound/C7738NOR7870TDM$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 27
    iget v0, v0, Lmodule/sound/C7738NOR7870TDM$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto/16 :goto_2

    .line 28
    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 29
    sget-object v0, Lmodule/sound/C7738NOR7870TDM$CHANNEL;->b:Lmodule/sound/C7738NOR7870TDM$CHANNEL;

    iget v1, v0, Lmodule/sound/C7738NOR7870TDM$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 30
    iget v0, v0, Lmodule/sound/C7738NOR7870TDM$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 31
    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->P0(Z)V

    .line 32
    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->O0(Z)V

    goto/16 :goto_2

    .line 33
    :cond_9
    instance-of v3, p1, Lmodule/sound/C7738NOR7870;

    if-eqz v3, :cond_b

    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 35
    sget-object v0, Lmodule/sound/C7738NOR7870$CHANNEL;->b:Lmodule/sound/C7738NOR7870$CHANNEL;

    iget v1, v0, Lmodule/sound/C7738NOR7870$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 36
    iget v0, v0, Lmodule/sound/C7738NOR7870$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto/16 :goto_2

    .line 37
    :cond_a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 38
    sget-object v0, Lmodule/sound/C7738NOR7870$CHANNEL;->b:Lmodule/sound/C7738NOR7870$CHANNEL;

    iget v1, v0, Lmodule/sound/C7738NOR7870$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 39
    iget v0, v0, Lmodule/sound/C7738NOR7870$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 40
    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->P0(Z)V

    .line 41
    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->O0(Z)V

    goto/16 :goto_2

    .line 42
    :cond_b
    instance-of v3, p1, Lmodule/sound/C7738;

    if-eqz v3, :cond_d

    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 44
    sget-object v0, Lmodule/sound/C7738$CHANNEL;->b:Lmodule/sound/C7738$CHANNEL;

    iget v1, v0, Lmodule/sound/C7738$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 45
    iget v0, v0, Lmodule/sound/C7738$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto/16 :goto_2

    .line 46
    :cond_c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 47
    sget-object v0, Lmodule/sound/C7738$CHANNEL;->b:Lmodule/sound/C7738$CHANNEL;

    iget v1, v0, Lmodule/sound/C7738$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 48
    iget v0, v0, Lmodule/sound/C7738$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 49
    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->P0(Z)V

    .line 50
    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->O0(Z)V

    goto/16 :goto_2

    .line 51
    :cond_d
    instance-of v3, p1, Lmodule/sound/C32107S;

    const-string v4, "6"

    const-string v5, "4"

    const-string v9, "7"

    if-eqz v3, :cond_f

    .line 52
    invoke-static {v0, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v0, v4}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v0, v9}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 53
    :cond_e
    sget-object v0, Lmodule/sound/C32107S$CHANNEL;->d:Lmodule/sound/C32107S$CHANNEL;

    iget v1, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 54
    iget v0, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto/16 :goto_2

    .line 55
    :cond_f
    instance-of v3, p1, Lmodule/sound/C32107;

    if-eqz v3, :cond_12

    .line 56
    invoke-static {v0, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0, v4}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0, v9}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const/4 v0, 0x6

    .line 57
    sget-object v1, Lmodule/sound/C32107$CHANNEL;->d:Lmodule/sound/C32107$CHANNEL;

    iget v1, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v0, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 58
    sget-object v0, Lmodule/sound/C32107$CHANNEL;->c:Lmodule/sound/C32107$CHANNEL;

    iget v1, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 59
    iget v0, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 60
    :cond_11
    sget-object v0, Lbase/Configure$Property;->a0:Lbase/Configure$Property;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HDMI-RV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 61
    check-cast p1, Lmodule/sound/C32107;

    invoke-virtual {p1, v7}, Lmodule/sound/C32107;->X1(Z)V

    goto/16 :goto_2

    .line 62
    :cond_12
    instance-of v3, p1, Lmodule/sound/a;

    const/16 v4, 0xc

    const/4 v5, 0x5

    const/16 v10, 0x9

    if-eqz v3, :cond_14

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 64
    invoke-virtual {p1, v8, v5}, Lmodule/sound/AudioDevice;->L0(II)V

    goto/16 :goto_2

    .line 65
    :cond_13
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-ne v0, v10, :cond_19

    const-string v0, "soundMute1"

    const-string v1, "========>>>  setAudioChannel 7862"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1, v8, v4}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    .line 68
    :cond_14
    instance-of v2, p1, Lmodule/sound/C8288;

    if-eqz v2, :cond_15

    .line 69
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 70
    sget-object v0, Lmodule/sound/C8288$CHANNLE;->j:Lmodule/sound/C8288$CHANNLE;

    iget v0, v0, Lmodule/sound/C8288$CHANNLE;->a:I

    invoke-virtual {p1, v8, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 71
    sget-object v0, Lmodule/sound/C8288$CHANNLE;->i:Lmodule/sound/C8288$CHANNLE;

    iget v0, v0, Lmodule/sound/C8288$CHANNLE;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    .line 72
    :cond_15
    instance-of v1, p1, Lmodule/sound/C2313;

    if-eqz v1, :cond_17

    .line 73
    invoke-static {v4}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 74
    invoke-virtual {p0, v7}, Ln0/c4;->g3(Z)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Lmodule/sound/AudioDevice;->S0(Z)V

    goto :goto_2

    .line 76
    :cond_16
    invoke-static {v10}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 77
    invoke-virtual {p0, v7}, Ln0/c4;->g3(Z)V

    .line 78
    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->S0(Z)V

    goto :goto_2

    .line 79
    :cond_17
    instance-of v1, p1, Lmodule/sound/C7604;

    if-eqz v1, :cond_18

    .line 80
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 81
    sget-object v0, Lmodule/sound/C7604$CHANNEL;->e:Lmodule/sound/C7604$CHANNEL;

    iget v1, v0, Lmodule/sound/C7604$CHANNEL;->a:I

    invoke-virtual {p1, v8, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 82
    iget v0, v0, Lmodule/sound/C7604$CHANNEL;->a:I

    invoke-virtual {p1, v6, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    .line 83
    :cond_18
    instance-of v0, p1, Lmodule/sound/C3702;

    if-eqz v0, :cond_19

    .line 84
    invoke-virtual {p0, v7}, Ln0/c4;->g3(Z)V

    .line 85
    sput-boolean v7, Lu0/b;->V3:Z

    .line 86
    invoke-static {v10}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 87
    sget-object v0, Lmodule/sound/C3702$CHANNEL;->h:Lmodule/sound/C3702$CHANNEL;

    iget v0, v0, Lmodule/sound/C3702$CHANNEL;->a:I

    invoke-virtual {p1, v5, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    :cond_19
    :goto_2
    return-void
.end method

.method public I3(Le1/c;)V
    .locals 6

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    .line 2
    instance-of v0, p1, Le1/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v1, v1}, Le1/c;->v(II)V

    .line 4
    invoke-virtual {p1, v4, v4}, Le1/c;->v(II)V

    .line 5
    invoke-virtual {p1, v3, v3}, Le1/c;->v(II)V

    .line 6
    invoke-virtual {p1, v2, v5}, Le1/c;->v(II)V

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, v0, v2}, Le1/c;->v(II)V

    .line 8
    invoke-virtual {p1, v5, v0}, Le1/c;->v(II)V

    const/4 v1, 0x6

    .line 9
    invoke-virtual {p1, v1, v3}, Le1/c;->v(II)V

    const/4 v1, 0x7

    .line 10
    invoke-virtual {p1, v1, v2}, Le1/c;->v(II)V

    const/16 v1, 0x8

    .line 11
    invoke-virtual {p1, v1, v0}, Le1/c;->v(II)V

    const/16 v0, 0x9

    .line 12
    invoke-virtual {p1, v0, v4}, Le1/c;->v(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    .line 13
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Le1/e;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1, v5, v2}, Le1/c;->v(II)V

    .line 15
    sget-object v0, Lbase/Configure$Property;->x:Lbase/Configure$Property;

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1, v3, v4}, Le1/c;->v(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public J3(Li1/b0$a;I)V
    .locals 5

    .line 1
    sget-object v0, Lg/e;->a:Lg/g;

    if-eqz v0, :cond_4

    invoke-static {}, Lg/e;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lg/e;->a:Lg/g;

    check-cast v0, Lchip/Chip;

    .line 3
    invoke-virtual {v0}, Lchip/Chip;->u()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "sys.fyt.serialdebug"

    const-string v3, "on"

    .line 5
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    sget v2, Lo0/e;->a:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_2

    .line 6
    :cond_1
    invoke-virtual {v0}, Lchip/Chip;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 7
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    new-instance p2, Ln0/c4$p;

    invoke-direct {p2, p0, v1}, Ln0/c4$p;-><init>(Ln0/c4;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 8
    :cond_3
    invoke-virtual {v0}, Lchip/Chip;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lchip/Chip;->q(Ljava/lang/String;I)Li1/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Li1/b0;->i(Li1/b0$a;)V

    :cond_4
    return-void
.end method

.method public K2()V
    .locals 4

    .line 1
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v1, v0, Lchip/Chip;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lchip/Chip;

    const/16 v1, 0xd8

    const-string v2, "ro.syu.customized_intent"

    const-string v3, ""

    .line 3
    invoke-static {v2, v3}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    instance-of v2, v0, Lg/j;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lg/j;

    invoke-virtual {v2}, Lg/j;->Z()Ljava/lang/String;

    move-result-object v2

    const-string v3, "817"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Common360_817#19200"

    .line 5
    :cond_0
    invoke-virtual {v0}, Lchip/Chip;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ln0/c4;->N2(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public K3()V
    .locals 6

    const-string v0, "sys.fyt.bluetooth_type"

    const-string v1, "0"

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "7"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lbase/Configure$Property;->e:Lbase/Configure$Property;

    invoke-virtual {v1, v3}, Lbase/Configure$Property;->d(I)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "2"

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "6"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ln0/c4$d;

    invoke-direct {v0, p0}, Ln0/c4$d;-><init>(Ln0/c4;)V

    goto :goto_3

    .line 5
    :cond_3
    new-instance v0, Ln0/c4$e;

    invoke-direct {v0, p0}, Ln0/c4$e;-><init>(Ln0/c4;)V

    .line 6
    :goto_3
    sget-object v1, Lh0/d;->c:Lo1/y;

    invoke-virtual {v1, v0, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v1, Lh0/d;->a:Lo1/y;

    invoke-virtual {v1, v0, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v1, Lh0/d;->j:Lo1/y;

    invoke-virtual {v1, v0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_4
    return-void
.end method

.method public L2()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    const-string v1, "ro.syu.sound_field.wholecar"

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lk0/nt;->d:Lk0/lt;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lk0/lt;->K2()[I

    move-result-object v0

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x8
        0x8
    .end array-data
.end method

.method public L3()V
    .locals 0

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public M2()V
    .locals 4

    const-string v0, "Qin"

    const-string v1, " ------->> bootReady"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.youzi.customer.service"

    .line 2
    invoke-static {v0}, Lo1/u;->J0(Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lo1/u;->O0()V

    .line 4
    invoke-static {}, Lo1/u;->K0()V

    .line 5
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    const-string v1, "com.android.bluetooth"

    .line 6
    invoke-virtual {v0, v1}, Ly0/j;->l3(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lplugins/BusKtv;->X()Lplugins/BusKtv;

    move-result-object v1

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v1, v2}, Lplugins/BusKtv;->Y(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    const-string v2, "com.ankai.cardvr"

    invoke-static {v1, v2}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0, v2}, Ly0/j;->l3(Ljava/lang/String;)V

    :cond_0
    const-string v1, "com.williexing.android.apps.xcdvr1"

    .line 10
    invoke-virtual {v0, v1}, Ly0/j;->l3(Ljava/lang/String;)V

    const-string v1, "com.maitianiot.rl.carsetapp"

    .line 11
    invoke-virtual {v0, v1}, Ly0/j;->l3(Ljava/lang/String;)V

    const-string v1, "com.maitianiot.rl.carservice"

    .line 12
    invoke-virtual {v0, v1}, Ly0/j;->l3(Ljava/lang/String;)V

    const-string v1, "/system/bin/CarplayService"

    .line 13
    invoke-virtual {v0, v1}, Ly0/j;->l3(Ljava/lang/String;)V

    const-string v1, "com.syu.carlink"

    .line 14
    invoke-virtual {v0, v1}, Ly0/j;->l3(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Ln0/c4$x;

    invoke-direct {v1, p0}, Ln0/c4$x;-><init>(Ln0/c4;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "com.example.clxycontrolservice.check"

    const-string v1, "com.example.clxycontrolservice"

    .line 16
    invoke-static {v0, v1}, Lo1/u;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Ln0/c4;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ln0/c4;->d3(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Ln0/c4;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ln0/c4;->w3(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lo1/u;->N0()V

    .line 20
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    sget-object v1, Lbase/Configure$Property;->u:Lbase/Configure$Property;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lh1/a;->n(Z)V

    .line 21
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    sget-object v1, Lbase/Configure$Property;->v:Lbase/Configure$Property;

    invoke-virtual {v1, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lh1/a;->o(Z)V

    return-void
.end method

.method public M3(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln0/c4;->j:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p1, :cond_0

    aget v2, v0, v3

    if-eq v2, p2, :cond_1

    .line 2
    :cond_0
    aput p1, v0, v1

    .line 3
    aput p2, v0, v3

    const/16 v0, 0x91

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v1

    aput p2, v2, v3

    .line 4
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 5
    iget-object p1, p0, Ln0/c4;->j:[I

    const/16 p2, 0x3f7

    invoke-virtual {p0, p2, p1}, Ln0/c4;->E3(I[I)V

    .line 6
    iget-object p1, p0, Ln0/c4;->e:Lo1/h0;

    invoke-virtual {p1, p2}, Lo1/h0;->e(I)V

    :cond_1
    return-void
.end method

.method public N2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v1, v0, Lchip/Chip;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    check-cast v0, Lchip/Chip;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commonBoardSerialCustomDev path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " DataDvd.sModuleId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lo0/e;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Device"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v0}, Lchip/Chip;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "sys.fyt.serialdebug"

    const-string v4, "off"

    .line 5
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lo0/e;->a:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 6
    :goto_0
    invoke-static {p2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, "ro.syu.customized_intent"

    invoke-static {v4, p2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "commonBoardSerialCustomDev tpye: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "NULL"

    .line 8
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "BBApannel#38400"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v0, :cond_5

    .line 10
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p2

    new-instance v0, Ln0/c4$j;

    invoke-direct {v0, p0, p1}, Ln0/c4$j;-><init>(Ln0/c4;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_5
    const-string v0, "#"

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 12
    aget-object v3, v0, v2

    .line 13
    :try_start_0
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 14
    sget-object v4, Lg/e;->a:Lg/g;

    check-cast v4, Lchip/Chip;

    invoke-virtual {v4, p1, v0}, Lchip/Chip;->q(Ljava/lang/String;I)Li1/b0;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v3, v0}, Li1/b0;->j(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    :catch_0
    if-eqz v2, :cond_6

    .line 16
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lu0/i;->r4(Ljava/lang/String;)V

    :cond_6
    return v2

    .line 17
    :cond_7
    :goto_2
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lu0/i;->r4(Ljava/lang/String;)V

    return v2
.end method

.method public N3([I[I)V
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, v0}, Lo1/s0;->h([II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, v0}, Lo1/s0;->h([II)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ro.syu.brightLevelOfDay"

    const-string v2, ""

    .line 2
    invoke-static {v1, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo1/s0;->E(Ljava/lang/String;)[I

    move-result-object v1

    const-string v3, "ro.syu.brightLevelOfNight"

    .line 3
    invoke-static {v3, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo1/s0;->E(Ljava/lang/String;)[I

    move-result-object v2

    .line 4
    invoke-static {v1, v0}, Lo1/s0;->h([II)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p1, v1

    :cond_1
    sput-object p1, Lu0/b;->V2:[I

    .line 5
    invoke-static {v1, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p2, v2

    :cond_2
    sput-object p2, Lu0/b;->W2:[I

    .line 6
    new-instance p1, Ln0/c4$m;

    invoke-direct {p1, p0}, Ln0/c4$m;-><init>(Ln0/c4;)V

    sput-object p1, Lu0/b;->Y2:Lo1/o;

    :cond_3
    :goto_0
    return-void
.end method

.method public O2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln0/c4;->W2()V

    .line 2
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v1, v0, Lchip/Chip;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lchip/Chip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lchip/Chip;->Q(Z)V

    :cond_0
    return-void
.end method

.method public O3()V
    .locals 4

    .line 1
    new-instance v0, Lbase/Configure;

    invoke-direct {v0}, Lbase/Configure;-><init>()V

    .line 2
    sget-object v1, Ln0/c4;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbase/Configure;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    sput v1, Lu0/b;->P2:I

    .line 4
    sput v1, Lu0/b;->R2:I

    const/16 v1, 0xbb8

    .line 5
    sput v1, Lu0/b;->v3:I

    .line 6
    sget-boolean v1, Ln0/c4;->x:Z

    const-string v2, ""

    if-eqz v1, :cond_1

    sget-object v1, Ln0/c4;->y:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    const-string v3, "dvd"

    .line 7
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ln0/c4;->s3(Ljava/lang/String;)V

    .line 8
    sget-object v1, Ln0/c4;->y:Ljava/util/HashMap;

    const-string v3, "audio_ic"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ln0/c4;->o3(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v1

    invoke-virtual {v1}, Lf1/o;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    sget-object v1, Ln0/c4;->y:Ljava/util/HashMap;

    const-string v3, "image_ic"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ln0/c4;->u3(Ljava/lang/String;)V

    .line 11
    :cond_0
    sget-object v1, Ln0/c4;->y:Ljava/util/HashMap;

    const-string v3, "bluetooth_type"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ln0/c4;->p3(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    sget-object v1, Lbase/Configure$Key;->b:Lbase/Configure$Key;

    iget-object v1, v1, Lbase/Configure$Key;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbase/Configure;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ln0/c4;->s3(Ljava/lang/String;)V

    .line 13
    sget-object v1, Lbase/Configure$Key;->e:Lbase/Configure$Key;

    iget-object v1, v1, Lbase/Configure$Key;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbase/Configure;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ln0/c4;->o3(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v1

    invoke-virtual {v1}, Lf1/o;->m()Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    sget-object v1, Lg/e;->a:Lg/g;

    check-cast v1, Lchip/Chip;

    invoke-virtual {v1}, Lchip/Chip;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ln0/c4;->u3(Ljava/lang/String;)V

    .line 16
    :cond_2
    sget-object v1, Lbase/Configure$Key;->d:Lbase/Configure$Key;

    iget-object v1, v1, Lbase/Configure$Key;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbase/Configure;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ln0/c4;->p3(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lf0/c;->X2()Lf0/c;

    move-result-object v1

    invoke-virtual {v1}, Lf0/c;->Z2()V

    .line 18
    :goto_0
    sget-object v1, Lbase/Configure$Key;->g:Lbase/Configure$Key;

    iget-object v1, v1, Lbase/Configure$Key;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbase/Configure;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ln0/c4;->h:Ljava/lang/String;

    const-string v3, ".json"

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Ln0/c4;->h:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lq1/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ln0/c4;->h:Ljava/lang/String;

    .line 23
    :cond_3
    sget-object v1, Lbase/Configure$Key;->h:Lbase/Configure$Key;

    iget-object v1, v1, Lbase/Configure$Key;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbase/Configure;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln0/c4;->i:Ljava/lang/String;

    .line 24
    invoke-static {}, Lh0/e;->D()V

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 0

    return-void
.end method

.method public P2()V
    .locals 0

    return-void
.end method

.method public P3(Ljava/lang/String;)V
    .locals 18

    const-string v0, "startup"

    const-string v1, "keep_alive"

    const-string v2, "class"

    const-string v3, "action"

    const-string v4, "pkg"

    .line 1
    invoke-static/range {p1 .. p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_b

    .line 4
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 5
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v11

    .line 6
    :goto_1
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_2
    move-object v12, v11

    .line 7
    :goto_2
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 8
    :cond_3
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v13, 0x1

    .line 9
    :goto_4
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    goto :goto_5

    :cond_6
    const-wide/16 v15, 0x0

    :goto_5
    move v9, v8

    move-wide v7, v15

    if-eqz v10, :cond_a

    if-nez v12, :cond_7

    if-eqz v11, :cond_a

    .line 10
    :cond_7
    invoke-static {v10, v11, v12}, Lo1/u;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string v15, "Keeper"

    .line 11
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "01 startService pkg: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " class: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isKeep : "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_8

    const/4 v0, 0x1

    .line 12
    invoke-static {v0, v10, v12, v7, v8}, Lb/d;->e(ZLjava/lang/String;Ljava/lang/String;J)Z

    goto :goto_6

    :cond_8
    if-eqz v11, :cond_9

    .line 13
    invoke-static {v10, v11}, Lo1/u;->F0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 14
    :cond_9
    invoke-static {v12, v10}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :cond_a
    move-object/from16 v17, v0

    :goto_6
    add-int/lit8 v8, v9, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_0

    :catch_0
    :cond_b
    return-void
.end method

.method public Q2()V
    .locals 3

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.syu.panoramic"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lg/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x22f

    new-instance v2, Ln0/c4$l;

    invoke-direct {v2, p0}, Ln0/c4$l;-><init>(Ln0/c4;)V

    invoke-virtual {v0, v1, v2}, Lc/e;->i(ILc/d;)V

    return-void
.end method

.method public Q3()Z
    .locals 3

    .line 1
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Ly0/f;->C0:I

    const/16 v2, 0x1e

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public R2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln0/c4;->W2()V

    return-void
.end method

.method public R3(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln0/c4;->m3()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ln0/j4;->c:Ljava/lang/String;

    const-string v1, "NOR"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ln0/j4;->c:Ljava/lang/String;

    const-string v1, "BUG"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ln0/j4;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return p1

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x34
    .end array-data
.end method

.method public S2()V
    .locals 5

    .line 1
    invoke-static {}, Lg/e;->p()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x2f

    const/4 v3, 0x1

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_0

    .line 2
    invoke-static {}, Lg/e;->p()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 3
    invoke-static {}, Lg/e;->p()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4
    :cond_0
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v4, v0, Lg/j;

    if-eqz v4, :cond_1

    .line 5
    check-cast v0, Lg/j;

    invoke-virtual {v0, v3}, Lg/j;->a0(I)V

    .line 6
    :cond_1
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v4, v0, Lchip/Chip;

    if-eqz v4, :cond_2

    .line 7
    check-cast v0, Lchip/Chip;

    const/16 v4, 0x3f

    invoke-static {v4}, Lg/e;->j(I)Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lchip/Chip;->Q(Z)V

    :cond_2
    const-string v0, "sys.syu.dvd_external"

    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v3

    .line 9
    :goto_0
    sput v0, Lo0/e;->k0:I

    .line 10
    sput-boolean v3, Lu0/b;->W3:Z

    const-string v0, "sys.syu.no_audio_mute"

    .line 11
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lu0/b;->d4:Z

    const/4 v0, -0x1

    .line 12
    sput v0, Lmodule/bt/CmdBtSG9832;->v:I

    .line 13
    sput-boolean v4, Lmodule/bt/CmdBtSG9832;->u:Z

    .line 14
    invoke-virtual {p0}, Ln0/c4;->O3()V

    .line 15
    invoke-static {}, Le1/c;->n()Le1/c;

    move-result-object v0

    .line 16
    instance-of v4, v0, Le1/e;

    if-eqz v4, :cond_4

    .line 17
    check-cast v0, Le1/e;

    invoke-virtual {v0, v3}, Le1/e;->Q(Z)V

    .line 18
    :cond_4
    invoke-static {}, Lg/e;->e()I

    move-result v0

    .line 19
    sget v4, Lw0/d;->a:I

    if-ne v4, v3, :cond_6

    .line 20
    invoke-static {}, Lg/e;->p()I

    move-result v3

    if-eq v3, v1, :cond_5

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_5

    if-ne v0, v2, :cond_6

    :cond_5
    const-string v0, "AUTO"

    .line 21
    invoke-virtual {p0, v0}, Ln0/c4;->v3(Ljava/lang/String;)V

    .line 22
    :cond_6
    invoke-virtual {p0}, Ln0/c4;->K2()V

    return-void
.end method

.method public T2()V
    .locals 1

    const-string v0, "/dev/ttyS2"

    .line 1
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    return-void
.end method

.method public U2()V
    .locals 1

    .line 1
    sget v0, Lmodule/sound/C32107;->z1:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lmodule/sound/C32107;->z1:I

    .line 2
    sget v0, Lmodule/sound/C32107;->A1:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lmodule/sound/C32107;->A1:I

    .line 3
    invoke-virtual {p0}, Ln0/c4;->X2()V

    return-void
.end method

.method public V2()V
    .locals 1

    const/16 v0, 0x3c

    .line 1
    sput v0, Lu0/b;->T2:I

    const/16 v0, 0x32

    .line 2
    sput v0, Lu0/b;->U2:I

    .line 3
    invoke-virtual {p0}, Ln0/c4;->U2()V

    return-void
.end method

.method public W2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln0/c4;->U2()V

    return-void
.end method

.method public X2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->j:Lo1/y;

    new-instance v1, Ln0/c4$c;

    invoke-direct {v1, p0}, Ln0/c4$c;-><init>(Ln0/c4;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    invoke-virtual {p0}, Ln0/c4;->K3()V

    const-string v0, "sys.syu.dvd_external"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4
    :goto_0
    sput v0, Lo0/e;->k0:I

    .line 5
    sput-boolean v2, Lu0/b;->W3:Z

    const-string v0, "sys.syu.no_audio_mute"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lu0/b;->d4:Z

    const/4 v0, -0x1

    .line 7
    sput v0, Lmodule/bt/CmdBtSG9832;->v:I

    .line 8
    sput-boolean v1, Lmodule/bt/CmdBtSG9832;->u:Z

    .line 9
    invoke-virtual {p0}, Ln0/c4;->O3()V

    .line 10
    sget v0, Lw0/d;->a:I

    if-ne v0, v2, :cond_1

    const-string v0, "AUTO"

    .line 11
    invoke-virtual {p0, v0}, Ln0/c4;->v3(Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Ln0/c4;->K2()V

    .line 13
    invoke-static {}, Lr0/a;->X2()Lr0/a;

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Y2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln0/c4;->U2()V

    .line 2
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v1, v0, Lchip/Chip;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lchip/Chip;

    const/16 v1, 0x42

    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x47

    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lchip/Chip;->Q(Z)V

    :cond_1
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 4

    const/16 p3, 0x3e8

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p4, 0x1

    .line 2
    invoke-virtual {p1, p4}, Lmodule/sound/AudioDevice;->X(I)[I

    move-result-object v0

    array-length v0, v0

    if-eqz p2, :cond_2

    .line 3
    array-length v1, p2

    add-int/2addr v0, p4

    if-lt v1, v0, :cond_2

    const/4 v1, 0x0

    aget v2, p2, v1

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    .line 4
    invoke-static {p2, p4, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p4

    .line 5
    aget v0, p2, v1

    invoke-virtual {p1, v0, p4}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 6
    aget p1, p2, v1

    add-int/2addr p1, p3

    invoke-virtual {p0, p1, p4}, Ln0/c4;->E3(I[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Z2()V
    .locals 0

    .line 1
    invoke-static {}, Lg/f;->j()V

    return-void
.end method

.method public a3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln0/c4;->K3()V

    const-string v0, "sys.syu.dvd_external"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    sput v0, Lo0/e;->k0:I

    .line 4
    sput-boolean v2, Lu0/b;->W3:Z

    const-string v0, "sys.syu.no_audio_mute"

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lu0/b;->d4:Z

    const/4 v0, -0x1

    .line 6
    sput v0, Lmodule/bt/CmdBtSG9832;->v:I

    .line 7
    sput-boolean v1, Lmodule/bt/CmdBtSG9832;->u:Z

    .line 8
    invoke-virtual {p0}, Ln0/c4;->O3()V

    .line 9
    sget v0, Lw0/d;->a:I

    if-ne v0, v2, :cond_1

    const-string v0, "AUTO"

    .line 10
    invoke-virtual {p0, v0}, Ln0/c4;->v3(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Ln0/c4;->K2()V

    return-void
.end method

.method public b3()V
    .locals 0

    .line 1
    invoke-static {}, Lg/f;->l()V

    return-void
.end method

.method public d3(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    .line 4
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4, v3}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static {v3, v1}, Lu0/d;->m0(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public e3(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln0/c4;->k:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Ln0/c4;->k:Z

    const/16 v0, 0x90

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    .line 4
    iget-object p1, p0, Ln0/c4;->e:Lo1/h0;

    iget-boolean v0, p0, Ln0/c4;->k:Z

    const/16 v1, 0x3f6

    invoke-virtual {p1, v1, v0}, Lo1/h0;->q(II)V

    .line 5
    iget-object p1, p0, Ln0/c4;->e:Lo1/h0;

    invoke-virtual {p1, v1}, Lo1/h0;->e(I)V

    :cond_0
    return-void
.end method

.method public f3(Z)V
    .locals 3

    .line 1
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v0, v0, Lchip/Chip;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Ln0/c4;->l:Z

    if-eq v0, p1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===========>>>  isAutoFanCtrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ln0/c4;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " last isFanEnable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ln0/c4;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " TO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AA"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-boolean p1, p0, Ln0/c4;->l:Z

    .line 5
    invoke-static {p1}, Lu0/d;->p0(I)V

    .line 6
    iget-object v0, p0, Ln0/c4;->e:Lo1/h0;

    iget-boolean v1, p0, Ln0/c4;->l:Z

    const/16 v2, 0x3f8

    invoke-virtual {v0, v2, v1}, Lo1/h0;->q(II)V

    .line 7
    iget-object v0, p0, Ln0/c4;->e:Lo1/h0;

    invoke-virtual {v0, v2}, Lo1/h0;->e(I)V

    .line 8
    :cond_0
    sget-object v0, Lg/e;->a:Lg/g;

    check-cast v0, Lchip/Chip;

    invoke-virtual {v0, p1}, Lchip/Chip;->o(Z)V

    :cond_1
    return-void
.end method

.method public g3(Z)V
    .locals 9

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/media/AudioManager;

    iget-boolean v2, p0, Ln0/c4;->d:Z

    if-eq v2, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Ln0/c4;->d:Z

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v7, "setAudioSwitch2iis"

    invoke-static {v2, v7, v4}, Lo1/d0;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Class;

    aput-object v5, v2, v6

    new-array v4, v3, [Ljava/lang/Object;

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v6

    invoke-static {v0, v1, v7, v2, v4}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v2

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    aput-object v7, v5, v3

    const/4 v7, 0x2

    aput-object v0, v5, v7

    const/4 v8, 0x3

    aput-object v0, v5, v8

    new-array v0, v4, [Ljava/lang/Object;

    const/16 v4, 0x8

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, ""

    aput-object p1, v0, v7

    aput-object p1, v0, v8

    const-string p1, "setWiredDeviceConnectionState"

    .line 8
    invoke-static {v1, v2, p1, v5, v0}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_0
    invoke-static {}, Ly0/h;->M()V

    :cond_1
    return-void
.end method

.method public h3()I
    .locals 2

    .line 1
    iget v0, p0, Ln0/c4;->f:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0xc

    :goto_1
    return v0
.end method

.method public i3(I[I)[I
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/c4;->e:Lo1/h0;

    invoke-virtual {v0, p1}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public j3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln0/c4;->L3()V

    .line 2
    sget-object v0, Lk0/ot;->a:Lo1/y;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Ln0/c4;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Ln0/c4;->p:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v2, p0, Ln0/c4;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v2, p0, Ln0/c4;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v2, p0, Ln0/c4;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public k3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln0/c4;->d:Z

    return v0
.end method

.method public m3()Z
    .locals 1

    .line 1
    invoke-static {}, Lg/e;->p()I

    move-result v0

    .line 2
    invoke-static {v0}, Lg/e;->i(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n3()Z
    .locals 2

    .line 1
    sget-object v0, Lbase/Configure$Property;->I:Lbase/Configure$Property;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    return v0
.end method

.method public o3(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===================loadAudio type :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "default"

    if-eqz p1, :cond_15

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "AUTO"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lg/e;->a:Lg/g;

    check-cast v1, Lchip/Chip;

    invoke-virtual {v1, p1}, Lchip/Chip;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lz/a;->v:Lo1/n;

    invoke-virtual {v2, v1}, Lo1/n;->f(Ljava/lang/String;)I

    :cond_1
    const-string v1, "32107"

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x6

    .line 7
    invoke-static {p1}, Ly0/h;->V(I)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "7602"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x7

    .line 9
    invoke-static {p1}, Ly0/h;->V(I)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "3702"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 11
    invoke-static {v2}, Ly0/h;->V(I)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "2313"

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_5

    .line 13
    invoke-static {v3}, Ly0/h;->V(I)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "8288"

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x2

    .line 15
    invoke-static {p1}, Ly0/h;->V(I)V

    goto/16 :goto_1

    :cond_6
    const-string v1, "7729"

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 p1, 0x9

    .line 17
    invoke-static {p1}, Ly0/h;->V(I)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "32107S"

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 p1, 0xa

    .line 19
    invoke-static {p1}, Ly0/h;->V(I)V

    goto/16 :goto_1

    :cond_8
    const-string v1, "7604"

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0xb

    if-eqz v1, :cond_9

    .line 21
    invoke-static {v4}, Ly0/h;->V(I)V

    goto/16 :goto_1

    :cond_9
    const-string v1, "du561"

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 p1, 0xc

    .line 23
    invoke-static {p1}, Ly0/h;->V(I)V

    goto/16 :goto_1

    :cond_a
    const-string v1, "du561n"

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 25
    invoke-static {v3}, Lg/f;->n(I)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x12

    .line 26
    invoke-static {p1}, Ly0/h;->V(I)V

    goto/16 :goto_1

    :cond_b
    const/16 p1, 0x11

    .line 27
    invoke-static {p1}, Ly0/h;->V(I)V

    goto :goto_1

    :cond_c
    const-string v1, "7738"

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0xe

    if-eqz v1, :cond_f

    .line 29
    invoke-static {v3}, Lg/f;->n(I)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0x14

    .line 30
    invoke-static {p1}, Ly0/h;->V(I)V

    goto :goto_1

    .line 31
    :cond_d
    invoke-static {v4}, Lg/f;->f(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0xf

    .line 32
    invoke-static {p1}, Ly0/h;->V(I)V

    goto :goto_1

    :cond_e
    const/16 p1, 0xd

    .line 33
    invoke-static {p1}, Ly0/h;->V(I)V

    goto :goto_1

    :cond_f
    const-string v1, "7738FC"

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 35
    invoke-static {v3}, Ly0/h;->V(I)V

    goto :goto_1

    :cond_10
    const-string v1, "7739"

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 p1, 0x10

    .line 37
    invoke-static {p1}, Ly0/h;->V(I)V

    goto :goto_1

    .line 38
    :cond_11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x4

    .line 39
    invoke-static {p1}, Ly0/h;->V(I)V

    .line 40
    invoke-static {v3}, Lg/f;->n(I)Z

    move-result p1

    if-nez p1, :cond_13

    .line 41
    invoke-static {}, Lg/f;->r()Z

    move-result p1

    if-nez p1, :cond_12

    invoke-static {}, Lg/f;->q()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Ln0/c4;->g3(Z)V

    .line 42
    :cond_13
    :goto_1
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 43
    invoke-virtual {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    :cond_14
    return-void

    :cond_15
    :goto_2
    const-string v2, "ro.sys.audio_ic"

    const-string v3, ""

    .line 44
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===================loadAudio force set type :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "persist.sys.syu.audio"

    .line 47
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "NONE"

    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    move-object v2, v0

    .line 49
    :cond_16
    invoke-static {}, Lb/b;->f()Lb/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lb/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_3

    :cond_17
    move-object v0, v2

    .line 50
    :goto_3
    invoke-virtual {p0, v0}, Ln0/c4;->o3(Ljava/lang/String;)V

    return-void
.end method

.method public p3(Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AUTO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "sys.fyt.bluetooth_type"

    const-string v1, "0"

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "module"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===================loadBluetooth type :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_a

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INNER"

    .line 6
    invoke-static {}, Lb/b;->f()Lb/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/b;->d(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "RDA"

    const/4 v5, 0x1

    if-eqz v2, :cond_8

    :try_start_1
    const-string v2, "1"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "8"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    const-string v2, "2"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "IVT"

    goto :goto_5

    :cond_3
    const-string v2, "3"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "7"

    const-string v7, "6"

    const-string v8, "4"

    if-nez v2, :cond_4

    .line 11
    :try_start_2
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "5"

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 13
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 14
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 15
    :cond_4
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 16
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 17
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    .line 18
    :cond_6
    :goto_2
    sput-boolean v5, Lh0/c;->g:Z

    :goto_3
    move-object v1, v4

    goto :goto_5

    .line 19
    :cond_7
    :goto_4
    sput-boolean v5, Lh0/c;->g:Z

    move-object v1, v4

    :cond_8
    move v3, v5

    :goto_5
    const/4 v0, 0x3

    const/4 v2, 0x2

    if-eqz v3, :cond_9

    .line 20
    sget-object v3, Ly0/f;->z0:[I

    const/4 v4, 0x6

    aput v4, v3, v2

    .line 21
    aput v4, v3, v0

    goto :goto_6

    .line 22
    :cond_9
    sget-object v3, Ly0/f;->z0:[I

    aput v2, v3, v2

    .line 23
    aput v0, v3, v0

    .line 24
    :goto_6
    invoke-virtual {p0, v1}, Ln0/c4;->q3(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 25
    :catch_0
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Ln0/c4;->q3(Ljava/lang/String;)V

    :cond_a
    :goto_7
    return-void
.end method

.method public q3(Ljava/lang/String;)V
    .locals 3

    const-string v0, "INNER"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    .line 2
    invoke-static {p1}, Lh0/e;->H(I)V

    .line 3
    sget-object p1, Ly0/f;->b:Ly0/e;

    instance-of v0, p1, Lmodule/sound/AudioDevice;

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Lmodule/sound/AudioDevice;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmodule/sound/AudioDevice;->O0(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "RDA"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0xbb8

    if-eqz v0, :cond_1

    .line 6
    new-instance p1, Ln0/c4$f;

    invoke-direct {p1, p0}, Ln0/c4$f;-><init>(Ln0/c4;)V

    .line 7
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "IVT"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance p1, Ln0/c4$g;

    invoke-direct {p1, p0}, Ln0/c4$g;-><init>(Ln0/c4;)V

    .line 10
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v0, "WQBT"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x1c200

    const-string v0, "/dev/ttyS0"

    .line 12
    invoke-virtual {p0, v0, p1}, Ln0/c4;->F3(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public r3(I)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p1}, Ln0/c4;->z3(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const v1, 0x9600

    const/16 v2, 0x4b00

    const/16 v3, 0x17

    const/16 v4, 0xd

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    .line 2
    :sswitch_0
    sget-object v1, Lk0/nt;->d:Lk0/lt;

    instance-of v1, v1, Lo1/q;

    if-eqz v1, :cond_12

    .line 3
    invoke-static {}, Ln0/k4;->d()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {v1}, Lz/d;->a(Ljava/lang/String;)Lz/b;

    move-result-object v3

    iput-object v3, v0, Ln0/c4;->b:Lz/b;

    .line 6
    sget-object v3, Lk0/nt;->d:Lk0/lt;

    check-cast v3, Lo1/q;

    invoke-static {v1, v2, v3}, Lz/k;->e(Ljava/lang/String;ILo1/q;)V

    .line 7
    new-instance v1, Lz/b;

    sget-object v3, Lz/a;->q:Lo1/f0;

    sget-object v4, Lz/a;->i:Lo1/e0;

    sget-object v5, Lk0/nt;->d:Lk0/lt;

    check-cast v5, Lo1/q;

    invoke-direct {v1, v3, v4, v5, v2}, Lz/b;-><init>(Lo1/f0;Lo1/e0;Lo1/q;I)V

    iput-object v1, v0, Ln0/c4;->c:Lz/b;

    goto/16 :goto_5

    .line 8
    :sswitch_1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x268

    new-instance v3, Ln0/c4$n;

    invoke-direct {v3, v0}, Ln0/c4$n;-><init>(Ln0/c4;)V

    invoke-virtual {v1, v2, v3}, Lc/e;->i(ILc/d;)V

    .line 9
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x269

    new-instance v3, Ln0/c4$o;

    invoke-direct {v3, v0}, Ln0/c4$o;-><init>(Ln0/c4;)V

    invoke-virtual {v1, v2, v3}, Lc/e;->i(ILc/d;)V

    goto/16 :goto_5

    .line 10
    :sswitch_2
    sget-object v1, Lk0/nt;->d:Lk0/lt;

    instance-of v1, v1, Lo1/q;

    if-eqz v1, :cond_12

    invoke-static {}, Lk0/qt;->u()Z

    move-result v1

    if-nez v1, :cond_12

    .line 11
    invoke-static {}, Ln0/k4;->d()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const v2, 0x1c200

    .line 13
    invoke-static {v1}, Lz/d;->a(Ljava/lang/String;)Lz/b;

    move-result-object v3

    iput-object v3, v0, Ln0/c4;->b:Lz/b;

    .line 14
    sget-object v3, Lk0/nt;->d:Lk0/lt;

    check-cast v3, Lo1/q;

    invoke-static {v1, v2, v3}, Lz/k;->e(Ljava/lang/String;ILo1/q;)V

    .line 15
    new-instance v1, Lz/b;

    sget-object v3, Lz/a;->q:Lo1/f0;

    sget-object v4, Lz/a;->i:Lo1/e0;

    sget-object v5, Lk0/nt;->d:Lk0/lt;

    check-cast v5, Lo1/q;

    invoke-direct {v1, v3, v4, v5, v2}, Lz/b;-><init>(Lo1/f0;Lo1/e0;Lo1/q;I)V

    iput-object v1, v0, Ln0/c4;->c:Lz/b;

    goto/16 :goto_5

    .line 16
    :sswitch_3
    sget v1, Le1/a;->a:I

    if-ne v1, v9, :cond_12

    .line 17
    sget-object v1, Lu0/b;->t4:[I

    aput v9, v1, v8

    goto/16 :goto_5

    .line 18
    :sswitch_4
    sget-object v1, Lk0/nt;->d:Lk0/lt;

    instance-of v1, v1, Lo1/q;

    if-eqz v1, :cond_12

    invoke-static {}, Lk0/qt;->u()Z

    move-result v1

    if-nez v1, :cond_12

    .line 19
    invoke-static {}, Ln0/k4;->d()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 21
    :cond_3
    invoke-static {v1}, Lz/d;->a(Ljava/lang/String;)Lz/b;

    move-result-object v3

    iput-object v3, v0, Ln0/c4;->b:Lz/b;

    .line 22
    sget-object v3, Lk0/nt;->d:Lk0/lt;

    check-cast v3, Lo1/q;

    invoke-static {v1, v2, v3}, Lz/k;->e(Ljava/lang/String;ILo1/q;)V

    .line 23
    new-instance v1, Lz/b;

    sget-object v3, Lz/a;->q:Lo1/f0;

    sget-object v4, Lz/a;->i:Lo1/e0;

    sget-object v5, Lk0/nt;->d:Lk0/lt;

    check-cast v5, Lo1/q;

    invoke-direct {v1, v3, v4, v5, v2}, Lz/b;-><init>(Lo1/f0;Lo1/e0;Lo1/q;I)V

    iput-object v1, v0, Ln0/c4;->c:Lz/b;

    goto/16 :goto_5

    .line 24
    :sswitch_5
    sget-object v1, Lu0/b;->h3:[I

    const/4 v2, 0x4

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 25
    aput v3, v1, v6

    .line 26
    aput v3, v1, v9

    .line 27
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Lc/g;->g(Landroid/content/Context;)Lc/g;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lc/g;->b()V

    .line 29
    sget-object v2, La/b;->j:Ljava/lang/String;

    .line 30
    invoke-static {}, Lo1/u;->Q()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 31
    new-instance v4, Lc/g$b;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v11, La/b;->p:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v2, v11}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lc/g;->a(Lc/g$b;)V

    goto :goto_0

    .line 32
    :cond_4
    new-instance v4, Lc/g$b;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v11, La/b;->o:Ljava/lang/String;

    sget-object v12, La/b;->p:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v11, v12}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lc/g;->a(Lc/g$b;)V

    :goto_0
    if-eqz v3, :cond_5

    .line 33
    new-instance v3, Lc/g$b;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "com.syu.btav"

    invoke-direct {v3, v4, v6, v2, v7}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lc/g;->a(Lc/g$b;)V

    .line 34
    new-instance v3, Lc/g$b;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, La/b;->z:Ljava/lang/String;

    invoke-direct {v3, v4, v6, v2, v7}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lc/g;->a(Lc/g$b;)V

    goto :goto_1

    .line 35
    :cond_5
    new-instance v2, Lc/g$b;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, La/b;->k:Ljava/lang/String;

    sget-object v15, La/b;->l:Ljava/lang/String;

    const-string v14, "com.syu.bt.act.ActBtAvStart"

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/g;->a(Lc/g$b;)V

    .line 36
    new-instance v2, Lc/g$b;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, La/b;->y:Ljava/lang/String;

    sget-object v7, La/b;->z:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v6, v7}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/g;->a(Lc/g$b;)V

    .line 37
    :goto_1
    new-instance v2, Lc/g$b;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, La/b;->A:Ljava/lang/String;

    sget-object v6, La/b;->B:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/g;->a(Lc/g$b;)V

    goto/16 :goto_5

    .line 38
    :sswitch_6
    sput v7, Lu0/b;->g4:I

    .line 39
    sget v1, Le1/a;->a:I

    if-ne v1, v9, :cond_6

    .line 40
    sget-object v1, Lu0/b;->t4:[I

    const/16 v2, 0x19

    aput v2, v1, v8

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    .line 41
    sget-object v1, Lu0/b;->t4:[I

    aput v3, v1, v8

    goto :goto_2

    :cond_7
    if-ne v1, v6, :cond_8

    .line 42
    sget-object v1, Lu0/b;->t4:[I

    aput v9, v1, v8

    .line 43
    :cond_8
    :goto_2
    sget v1, Ly0/f;->a:I

    if-ne v1, v10, :cond_12

    .line 44
    invoke-static {v6}, Ly0/h;->V(I)V

    goto/16 :goto_5

    .line 45
    :sswitch_7
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 46
    instance-of v2, v1, Lmodule/sound/C32107;

    if-eqz v2, :cond_12

    .line 47
    sput v4, Lmodule/sound/C32107;->z1:I

    .line 48
    sput v10, Lmodule/sound/C32107;->A1:I

    .line 49
    sget v2, Ly0/f;->E:I

    invoke-virtual {v1, v2}, Lmodule/sound/AudioDevice;->l(I)V

    goto/16 :goto_5

    .line 50
    :sswitch_8
    sget-object v2, Lk0/nt;->d:Lk0/lt;

    instance-of v2, v2, Lo1/q;

    if-eqz v2, :cond_12

    invoke-static {}, Lk0/qt;->u()Z

    move-result v2

    if-nez v2, :cond_12

    .line 51
    invoke-static {}, Ln0/k4;->d()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    return-void

    .line 53
    :cond_9
    invoke-static {v2}, Lz/d;->a(Ljava/lang/String;)Lz/b;

    move-result-object v3

    iput-object v3, v0, Ln0/c4;->b:Lz/b;

    .line 54
    sget-object v3, Lk0/nt;->d:Lk0/lt;

    check-cast v3, Lo1/q;

    invoke-static {v2, v1, v3}, Lz/k;->e(Ljava/lang/String;ILo1/q;)V

    .line 55
    new-instance v2, Lz/b;

    sget-object v3, Lz/a;->q:Lo1/f0;

    sget-object v4, Lz/a;->i:Lo1/e0;

    sget-object v5, Lk0/nt;->d:Lk0/lt;

    check-cast v5, Lo1/q;

    invoke-direct {v2, v3, v4, v5, v1}, Lz/b;-><init>(Lo1/f0;Lo1/e0;Lo1/q;I)V

    iput-object v2, v0, Ln0/c4;->c:Lz/b;

    goto/16 :goto_5

    .line 56
    :sswitch_9
    sget v1, Le1/a;->a:I

    if-ne v1, v9, :cond_a

    .line 57
    sget-object v1, Lu0/b;->t4:[I

    aput v3, v1, v8

    goto :goto_3

    :cond_a
    if-ne v1, v6, :cond_b

    .line 58
    sget-object v1, Lu0/b;->t4:[I

    aput v9, v1, v8

    goto :goto_3

    :cond_b
    if-nez v1, :cond_c

    .line 59
    sget-object v1, Lu0/b;->t4:[I

    aput v5, v1, v8

    .line 60
    :cond_c
    :goto_3
    sget v1, Ly0/f;->a:I

    if-ne v1, v10, :cond_12

    .line 61
    invoke-static {v6}, Ly0/h;->V(I)V

    goto/16 :goto_5

    .line 62
    :sswitch_a
    sget v1, Ly0/f;->a:I

    const/16 v2, 0x24

    if-eq v1, v10, :cond_e

    if-eq v1, v9, :cond_d

    goto :goto_4

    .line 63
    :cond_d
    sget-object v1, Ly0/d;->l:[I

    iget-object v3, v0, Ln0/c4;->a:[I

    invoke-static {v1, v10, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v2, [I

    .line 64
    fill-array-data v3, :array_0

    .line 65
    invoke-static {v3, v7, v1, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-static {}, Ly0/d;->q()V

    goto :goto_4

    .line 67
    :cond_e
    sget-object v1, Ly0/b;->d:[I

    iget-object v3, v0, Ln0/c4;->a:[I

    invoke-static {v1, v10, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v2, [I

    .line 68
    fill-array-data v3, :array_1

    .line 69
    invoke-static {v3, v7, v1, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    :goto_4
    invoke-static {}, Ly0/h;->M()V

    goto :goto_5

    .line 71
    :sswitch_b
    sget-object v2, Lk0/nt;->d:Lk0/lt;

    instance-of v2, v2, Lo1/q;

    if-eqz v2, :cond_12

    invoke-static {}, Lk0/qt;->u()Z

    move-result v2

    if-nez v2, :cond_12

    .line 72
    invoke-static {}, Ln0/k4;->d()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    return-void

    .line 74
    :cond_f
    invoke-static {v2}, Lz/d;->a(Ljava/lang/String;)Lz/b;

    move-result-object v3

    iput-object v3, v0, Ln0/c4;->b:Lz/b;

    .line 75
    sget-object v3, Lk0/nt;->d:Lk0/lt;

    check-cast v3, Lo1/q;

    invoke-static {v2, v1, v3}, Lz/k;->e(Ljava/lang/String;ILo1/q;)V

    .line 76
    new-instance v2, Lz/b;

    sget-object v3, Lz/a;->q:Lo1/f0;

    sget-object v4, Lz/a;->i:Lo1/e0;

    sget-object v5, Lk0/nt;->d:Lk0/lt;

    check-cast v5, Lo1/q;

    invoke-direct {v2, v3, v4, v5, v1}, Lz/b;-><init>(Lo1/f0;Lo1/e0;Lo1/q;I)V

    iput-object v2, v0, Ln0/c4;->c:Lz/b;

    goto :goto_5

    .line 77
    :sswitch_c
    invoke-static {}, Ln0/k4;->k()V

    .line 78
    sget-object v1, Lu0/a;->h:[I

    const/16 v2, 0x18

    aput v2, v1, v4

    .line 79
    sget v1, Ly0/f;->a:I

    if-eq v1, v10, :cond_11

    if-eq v1, v9, :cond_10

    goto :goto_5

    .line 80
    :cond_10
    sget-object v1, Ly0/d;->a:[I

    aput v10, v1, v4

    .line 81
    sget-object v1, Ly0/d;->c:[I

    aput v7, v1, v4

    .line 82
    sget-object v1, Ly0/d;->b:[I

    aput v5, v1, v4

    goto :goto_5

    .line 83
    :cond_11
    sget-object v1, Ly0/b;->b:[I

    const/4 v2, 0x7

    aget v2, v1, v2

    aput v2, v1, v4

    goto :goto_5

    .line 84
    :sswitch_d
    invoke-static {}, Ln0/k4;->k()V

    :cond_12
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_d
        0x2f -> :sswitch_c
        0x43 -> :sswitch_d
        0x4c -> :sswitch_d
        0x65 -> :sswitch_b
        0x8b -> :sswitch_b
        0xaf -> :sswitch_a
        0x13d -> :sswitch_9
        0x159 -> :sswitch_8
        0x15c -> :sswitch_9
        0x1a2 -> :sswitch_7
        0x1ba -> :sswitch_9
        0x10122 -> :sswitch_8
        0x1013d -> :sswitch_6
        0x10142 -> :sswitch_a
        0x10144 -> :sswitch_a
        0x10159 -> :sswitch_8
        0x1015c -> :sswitch_9
        0x20065 -> :sswitch_b
        0x200f4 -> :sswitch_b
        0x2012c -> :sswitch_b
        0x2013d -> :sswitch_6
        0x20142 -> :sswitch_a
        0x20144 -> :sswitch_a
        0x2014b -> :sswitch_a
        0x2014d -> :sswitch_a
        0x20159 -> :sswitch_8
        0x2015c -> :sswitch_6
        0x201a9 -> :sswitch_6
        0x30033 -> :sswitch_b
        0x30079 -> :sswitch_8
        0x300f4 -> :sswitch_b
        0x3012c -> :sswitch_b
        0x3013d -> :sswitch_9
        0x30159 -> :sswitch_8
        0x3015c -> :sswitch_6
        0x301bc -> :sswitch_5
        0x40033 -> :sswitch_b
        0x40079 -> :sswitch_8
        0x40084 -> :sswitch_b
        0x4013d -> :sswitch_9
        0x40141 -> :sswitch_8
        0x40159 -> :sswitch_8
        0x4015c -> :sswitch_6
        0x401bc -> :sswitch_5
        0x50079 -> :sswitch_8
        0x500f4 -> :sswitch_b
        0x50159 -> :sswitch_8
        0x5015c -> :sswitch_6
        0x60079 -> :sswitch_8
        0x6013d -> :sswitch_6
        0x601be -> :sswitch_5
        0x70033 -> :sswitch_b
        0x70079 -> :sswitch_8
        0x700a0 -> :sswitch_b
        0x700f4 -> :sswitch_b
        0x7013d -> :sswitch_6
        0x7015c -> :sswitch_6
        0x7019c -> :sswitch_b
        0x80079 -> :sswitch_8
        0x800a0 -> :sswitch_b
        0x8013d -> :sswitch_6
        0x80159 -> :sswitch_8
        0x8015c -> :sswitch_6
        0x90079 -> :sswitch_8
        0x9015c -> :sswitch_6
        0xa0079 -> :sswitch_8
        0xa015c -> :sswitch_6
        0xa0176 -> :sswitch_b
        0xb015c -> :sswitch_6
        0xb01bc -> :sswitch_5
        0xc015c -> :sswitch_6
        0xc019d -> :sswitch_b
        0xd01bc -> :sswitch_5
        0xd01c8 -> :sswitch_4
        0xe00f4 -> :sswitch_b
        0xe01bc -> :sswitch_5
        0xe01be -> :sswitch_5
        0xe01c8 -> :sswitch_4
        0xf01bc -> :sswitch_5
        0x1001bc -> :sswitch_5
        0x1101bc -> :sswitch_5
        0x1201bc -> :sswitch_5
        0x1201c0 -> :sswitch_4
        0x1301bc -> :sswitch_5
        0x1301c0 -> :sswitch_4
        0x1301c7 -> :sswitch_4
        0x1401bc -> :sswitch_5
        0x1401c0 -> :sswitch_4
        0x1401c7 -> :sswitch_4
        0x1501c0 -> :sswitch_4
        0x1501c7 -> :sswitch_4
        0x1601b7 -> :sswitch_3
        0x1601c7 -> :sswitch_4
        0x1a01be -> :sswitch_5
        0x1a01c0 -> :sswitch_4
        0x1b01c0 -> :sswitch_4
        0x1d01bc -> :sswitch_5
        0x2201c6 -> :sswitch_b
        0x2301c6 -> :sswitch_b
        0x2401c0 -> :sswitch_4
        0x2401c6 -> :sswitch_b
        0x250163 -> :sswitch_b
        0x2501c0 -> :sswitch_4
        0x2501c6 -> :sswitch_b
        0x260163 -> :sswitch_b
        0x270163 -> :sswitch_b
        0x280163 -> :sswitch_b
        0x29014e -> :sswitch_4
        0x290163 -> :sswitch_b
        0x2a014e -> :sswitch_4
        0x2a0163 -> :sswitch_b
        0x2b014e -> :sswitch_4
        0x2c014e -> :sswitch_4
        0x2c01be -> :sswitch_b
        0x2d01be -> :sswitch_b
        0x2d01c0 -> :sswitch_4
        0x2e012a -> :sswitch_2
        0x2e01be -> :sswitch_b
        0x2e01c0 -> :sswitch_4
        0x2f012a -> :sswitch_2
        0x2f01bc -> :sswitch_5
        0x30012a -> :sswitch_1
        0x3001c0 -> :sswitch_4
        0x310065 -> :sswitch_b
        0x3101c0 -> :sswitch_4
        0x320065 -> :sswitch_b
        0x3201bc -> :sswitch_5
        0x3301c0 -> :sswitch_4
        0x3401be -> :sswitch_5
        0x3501be -> :sswitch_5
        0x380033 -> :sswitch_b
        0x390033 -> :sswitch_b
        0x3a0033 -> :sswitch_b
        0x3a01b7 -> :sswitch_3
        0x3a01c7 -> :sswitch_4
        0x3b0033 -> :sswitch_b
        0x3b01c7 -> :sswitch_4
        0x3c012a -> :sswitch_2
        0x3c01c6 -> :sswitch_b
        0x3c01c7 -> :sswitch_4
        0x3d012a -> :sswitch_2
        0x3d01c6 -> :sswitch_b
        0x3d01c7 -> :sswitch_4
        0x3e0176 -> :sswitch_b
        0x3e01c7 -> :sswitch_b
        0x3f0033 -> :sswitch_b
        0x3f0176 -> :sswitch_b
        0x3f01c7 -> :sswitch_b
        0x40012a -> :sswitch_2
        0x4001c4 -> :sswitch_b
        0x4101c4 -> :sswitch_b
        0x4201c4 -> :sswitch_b
        0x430033 -> :sswitch_b
        0x4301c4 -> :sswitch_b
        0x4401c4 -> :sswitch_b
        0x4501c4 -> :sswitch_b
        0x4601c4 -> :sswitch_b
        0x4701c4 -> :sswitch_b
        0x4801c7 -> :sswitch_b
        0x49012a -> :sswitch_2
        0x4a012a -> :sswitch_2
        0x4e01c7 -> :sswitch_2
        0x4f01c7 -> :sswitch_2
        0x5001c7 -> :sswitch_2
        0x5101c7 -> :sswitch_2
        0x5201c7 -> :sswitch_b
        0x5401c7 -> :sswitch_2
        0x5d018d -> :sswitch_b
        0x5e018d -> :sswitch_b
        0x5f018d -> :sswitch_b
        0x60018d -> :sswitch_b
        0x61018d -> :sswitch_b
        0x62018d -> :sswitch_b
        0x630176 -> :sswitch_b
        0x63018d -> :sswitch_b
        0x640176 -> :sswitch_b
        0x64018d -> :sswitch_b
        0x65018d -> :sswitch_b
        0x6501c5 -> :sswitch_b
        0x6501c6 -> :sswitch_b
        0x660176 -> :sswitch_b
        0x66018d -> :sswitch_b
        0x6601c5 -> :sswitch_b
        0x670176 -> :sswitch_b
        0x67018d -> :sswitch_b
        0x6701c5 -> :sswitch_b
        0x68018d -> :sswitch_b
        0x6801c5 -> :sswitch_b
        0x690176 -> :sswitch_b
        0x6901c4 -> :sswitch_b
        0x6a0176 -> :sswitch_b
        0x6d014e -> :sswitch_b
        0x6e01c8 -> :sswitch_4
        0x6f01c8 -> :sswitch_4
        0x72014e -> :sswitch_4
        0x73014e -> :sswitch_4
        0x74014e -> :sswitch_4
        0x75014e -> :sswitch_4
        0x7701c4 -> :sswitch_b
        0x7801c7 -> :sswitch_4
        0x7901c4 -> :sswitch_b
        0x7901c7 -> :sswitch_4
        0x7a01c7 -> :sswitch_4
        0x7b01c7 -> :sswitch_4
        0x7b01c8 -> :sswitch_4
        0x7c01c8 -> :sswitch_4
        0x7d01c8 -> :sswitch_4
        0x7e01c8 -> :sswitch_4
        0x7f0126 -> :sswitch_b
        0x810126 -> :sswitch_b
        0x860070 -> :sswitch_b
        0x870126 -> :sswitch_b
        0x8701b7 -> :sswitch_0
        0x8d01c8 -> :sswitch_4
        0x8e01c4 -> :sswitch_b
        0x8e01c8 -> :sswitch_4
        0x8f01c4 -> :sswitch_b
        0x8f01c8 -> :sswitch_4
        0x9001c4 -> :sswitch_b
        0x9001c8 -> :sswitch_4
        0x9201c8 -> :sswitch_4
        0x9301c8 -> :sswitch_b
        0x9401c8 -> :sswitch_b
        0x99003d -> :sswitch_b
        0x99012a -> :sswitch_2
        0x9a012a -> :sswitch_2
        0x9b012a -> :sswitch_2
        0x9c012a -> :sswitch_2
        0xa301c7 -> :sswitch_b
        0xa401c7 -> :sswitch_b
        0xa901c4 -> :sswitch_b
        0xa901c6 -> :sswitch_b
        0xaa01c4 -> :sswitch_b
        0xaa01c6 -> :sswitch_b
        0xab01c4 -> :sswitch_b
        0xab01c6 -> :sswitch_b
        0xac01c6 -> :sswitch_b
        0xae01c4 -> :sswitch_b
        0xb901c6 -> :sswitch_b
        0xba01c6 -> :sswitch_b
        0xbb01c6 -> :sswitch_b
        0xbc01c6 -> :sswitch_b
        0xbd01c6 -> :sswitch_b
        0xbe01c6 -> :sswitch_b
        0xbf01c6 -> :sswitch_b
        0xc001c6 -> :sswitch_b
        0xc101c6 -> :sswitch_b
        0xc201c6 -> :sswitch_b
        0xc301c6 -> :sswitch_b
        0xc301c7 -> :sswitch_4
        0xc401c6 -> :sswitch_b
        0xc401c7 -> :sswitch_4
        0xc501c6 -> :sswitch_b
        0xc601c6 -> :sswitch_b
        0xd701c4 -> :sswitch_b
        0xdb01c7 -> :sswitch_4
        0xe201c4 -> :sswitch_b
        0xe301c4 -> :sswitch_b
        0xe401c4 -> :sswitch_b
        0xe501c4 -> :sswitch_b
        0xe601c4 -> :sswitch_b
        0xe701c4 -> :sswitch_b
        0xe801c4 -> :sswitch_b
        0xe901c4 -> :sswitch_b
        0xf601c7 -> :sswitch_b
        0xf701c7 -> :sswitch_b
        0xfb01c5 -> :sswitch_b
        0xfc01c5 -> :sswitch_b
        0xfd01c5 -> :sswitch_b
        0xfe01b7 -> :sswitch_b
        0xfe01c5 -> :sswitch_b
    .end sparse-switch

    :array_0
    .array-data 4
        0xd
        0x16
        0x30
        0x3c
        0x44
        0x49
        0x4e
        0x53
        0x58
        0x5d
        0x62
        0x67
        0x6c
        0x72
        0x77
        0x7c
        0x81
        0x86
        0x8b
        0x8f
        0x94
        0x98
        0x9c
        0xa0
        0xa4
        0xaa
        0xae
        0xb2
        0xb6
        0xb9
        0xbc
        0xbf
        0xc1
        0xc3
        0xc5
        0xc6
    .end array-data

    :array_1
    .array-data 4
        0xc2
        0xbf
        0xbc
        0xb9
        0xb6
        0xb3
        0xb0
        0xad
        0xaa
        0xa7
        0xa6
        0xa5
        0xa4
        0xa3
        0xa2
        0xa1
        0xa0
        0x9f
        0x9e
        0x9d
        0x9c
        0x9b
        0x9a
        0x99
        0x98
        0x97
        0x96
        0x95
        0x94
        0x93
        0x92
        0x91
        0x90
        0x8f
        0x8e
        0x8d
    .end array-data
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln0/c4;->c:Lz/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lz/b;->a()V

    .line 3
    iput-object v1, p0, Ln0/c4;->c:Lz/b;

    .line 4
    :cond_0
    iget-object v0, p0, Ln0/c4;->b:Lz/b;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lz/b;->b()V

    .line 6
    iput-object v1, p0, Ln0/c4;->b:Lz/b;

    .line 7
    :cond_1
    sget v0, Lk0/nt;->b:I

    invoke-virtual {p0, v0}, Ln0/c4;->G3(I)V

    .line 8
    sget v0, Lk0/nt;->a:I

    invoke-virtual {p0, v0}, Ln0/c4;->r3(I)V

    return-void
.end method

.method public s3(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===================loadDvd type :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NULL"

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "AUTO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x7

    .line 3
    invoke-static {v1}, Lg/f;->f(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "sys.fyt.serialdebug"

    const-string v3, "on"

    .line 4
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    new-instance v0, Ln0/c4$h;

    invoke-direct {v0, p0}, Ln0/c4$h;-><init>(Ln0/c4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const-string v0, "8202"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/dev/ttyS1"

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v1}, Lz/k;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "8288"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-static {v1}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {v2}, Lo0/g;->y(I)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p1, "sys.syu.dvd_type"

    .line 12
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ln0/c4;->s3(Ljava/lang/String;)V

    return-void
.end method

.method public t3()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln0/c4;->e:Lo1/h0;

    iget-object v1, p0, Ln0/c4;->m:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/16 v3, 0x3f8

    invoke-virtual {v0, v3, v1}, Lo1/h0;->h(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Ln0/c4;->e:Lo1/h0;

    iget-object v3, p0, Ln0/c4;->m:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v5, 0x3f6

    invoke-virtual {v1, v5, v3}, Lo1/h0;->h(II)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Ln0/c4;->k:Z

    const/16 v1, 0x3f7

    .line 3
    iget-object v3, p0, Ln0/c4;->j:[I

    invoke-virtual {p0, v1, v3}, Ln0/c4;->i3(I[I)[I

    move-result-object v1

    iput-object v1, p0, Ln0/c4;->j:[I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===========>>> loadFanController isAutoFanCtrl : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ln0/c4;->k:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " last fanEnable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AA"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v4

    .line 5
    :goto_1
    invoke-virtual {p0, v0}, Ln0/c4;->f3(Z)V

    const/16 v0, 0x90

    new-array v1, v2, [I

    .line 6
    iget-boolean v2, p0, Ln0/c4;->k:Z

    aput v2, v1, v4

    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0x91

    .line 7
    iget-object v1, p0, Ln0/c4;->j:[I

    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    .line 8
    iget-object v0, p0, Ln0/c4;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Ln0/k4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u3(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===================loadImage type :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "2850"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x8

    .line 4
    invoke-static {p1}, Le1/b;->c(I)V

    goto :goto_0

    :cond_1
    const-string v0, "6911"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x9

    .line 6
    invoke-static {p1}, Le1/b;->c(I)V

    goto :goto_0

    :cond_2
    const-string v0, "V2854"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0xa

    .line 8
    invoke-static {p1}, Le1/b;->c(I)V

    goto :goto_0

    :cond_3
    const-string v0, "2815"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0xc

    .line 10
    invoke-static {p1}, Le1/b;->c(I)V

    goto :goto_0

    :cond_4
    const-string v0, "PR2100"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0xb

    .line 12
    invoke-static {p1}, Le1/b;->c(I)V

    goto :goto_0

    :cond_5
    const-string v0, "2860"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0xd

    .line 14
    invoke-static {p1}, Le1/b;->c(I)V

    .line 15
    :cond_6
    :goto_0
    invoke-static {}, Le1/c;->n()Le1/c;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p0, p1}, Ln0/c4;->I3(Le1/c;)V

    :cond_7
    return-void

    :cond_8
    :goto_1
    const/4 p1, 0x0

    .line 17
    invoke-static {p1}, Le1/b;->c(I)V

    return-void
.end method

.method public v3(Ljava/lang/String;)V
    .locals 5

    const-string v0, "persist.fyt.externalfm"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===================loadRadio type :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " externalfm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "module"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "AUTO"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "INNER"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v3}, Lw0/f;->l(I)V

    goto :goto_1

    :cond_1
    const-string v0, "OUTER"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    invoke-static {v2}, Lw0/f;->l(I)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 9
    invoke-static {v2}, Lw0/f;->l(I)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {v3}, Lw0/f;->l(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public w3(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lq1/a;->e(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ln0/c4;->P3(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Ln0/c4;->P3(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public x0(Lf1/q;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lf1/q;->G:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/16 v0, 0x46

    .line 2
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p1, v0, v1}, Lf1/q;->G(II)V

    .line 4
    sget-object v0, Lbase/Configure$Property;->x:Lbase/Configure$Property;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, v2, v3}, Lf1/q;->G(II)V

    .line 6
    :cond_1
    iget v0, p1, Lf1/q;->h:I

    if-ne v0, v2, :cond_2

    const/16 v0, 0x10

    .line 7
    invoke-virtual {p1, v0, v1}, Lf1/q;->G(II)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    const/16 v0, 0xf

    .line 8
    invoke-virtual {p1, v0, v3}, Lf1/q;->G(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public x3()V
    .locals 3

    .line 1
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v1, v0, Lchip/Chip;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lchip/Chip;

    invoke-virtual {v0, p0}, Lchip/Chip;->k(Lf1/o$c;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln0/c4;->Q2()V

    .line 4
    invoke-static {}, Lg/e;->a()I

    move-result v0

    iput v0, p0, Ln0/c4;->f:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " chip : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln0/c4;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget v0, p0, Ln0/c4;->f:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string v0, ""

    .line 7
    invoke-virtual {p0, v0}, Ln0/c4;->p3(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lz/k;->d()V

    .line 9
    :cond_2
    :goto_0
    iget v0, p0, Ln0/c4;->f:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 10
    :pswitch_1
    invoke-virtual {p0}, Ln0/c4;->R2()V

    goto :goto_1

    .line 11
    :pswitch_2
    invoke-virtual {p0}, Ln0/c4;->V2()V

    goto :goto_1

    .line 12
    :pswitch_3
    invoke-virtual {p0}, Ln0/c4;->O2()V

    goto :goto_1

    .line 13
    :pswitch_4
    invoke-virtual {p0}, Ln0/c4;->W2()V

    goto :goto_1

    .line 14
    :pswitch_5
    invoke-virtual {p0}, Ln0/c4;->Y2()V

    goto :goto_1

    .line 15
    :pswitch_6
    invoke-virtual {p0}, Ln0/c4;->U2()V

    goto :goto_1

    .line 16
    :pswitch_7
    invoke-virtual {p0}, Ln0/c4;->S2()V

    goto :goto_1

    .line 17
    :pswitch_8
    invoke-virtual {p0}, Ln0/c4;->X2()V

    goto :goto_1

    .line 18
    :pswitch_9
    invoke-virtual {p0}, Ln0/c4;->Z2()V

    goto :goto_1

    .line 19
    :pswitch_a
    invoke-virtual {p0}, Ln0/c4;->a3()V

    goto :goto_1

    .line 20
    :pswitch_b
    invoke-virtual {p0}, Ln0/c4;->b3()V

    goto :goto_1

    .line 21
    :pswitch_c
    invoke-virtual {p0}, Ln0/c4;->P2()V

    goto :goto_1

    .line 22
    :pswitch_d
    invoke-virtual {p0}, Ln0/c4;->T2()V

    .line 23
    :goto_1
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v0, v0, Lchip/Chip;

    if-eqz v0, :cond_3

    .line 24
    sget-object v0, Ly0/f;->b:Ly0/e;

    instance-of v0, v0, Lmodule/sound/AudioDevice;

    if-eqz v0, :cond_3

    .line 25
    sget-object v0, Lg/e;->a:Lg/g;

    check-cast v0, Lchip/Chip;

    sget-object v1, Ly0/f;->b:Ly0/e;

    check-cast v1, Lmodule/sound/AudioDevice;

    invoke-virtual {v0, v1}, Lchip/Chip;->j(Lmodule/sound/AudioDevice;)V

    :cond_3
    const/4 v0, 0x0

    const-string v1, "sys.syu.modle_ui_handle"

    .line 26
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/16 v1, 0x9

    new-instance v2, Ln0/c4$b;

    invoke-direct {v2, p0}, Ln0/c4$b;-><init>(Ln0/c4;)V

    invoke-virtual {v0, v1, v2}, Lc/f;->h(ILc/f$a;)V

    .line 28
    :cond_4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.tencent.wecarspeech"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    invoke-static {}, Le/f;->l()V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public y3(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public z3(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
