.class public Lv0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:B

.field public d:I

.field public e:B

.field public f:[Lv0/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv0/f;->a:I

    .line 3
    iput v0, p0, Lv0/f;->b:I

    .line 4
    iput-byte v0, p0, Lv0/f;->c:B

    .line 5
    iput v0, p0, Lv0/f;->d:I

    .line 6
    iput-byte v0, p0, Lv0/f;->e:B

    const/16 v0, 0xc

    new-array v0, v0, [Lv0/e;

    .line 7
    iput-object v0, p0, Lv0/f;->f:[Lv0/e;

    return-void
.end method
