.class public Lv0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:B

.field public d:[Lv0/e;

.field public e:B

.field public f:[Lv0/c;

.field public g:B

.field public h:[Lv0/o;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv0/g;->a:I

    .line 3
    iput v0, p0, Lv0/g;->b:I

    .line 4
    iput-byte v0, p0, Lv0/g;->c:B

    const/16 v1, 0xc

    new-array v1, v1, [Lv0/e;

    .line 5
    iput-object v1, p0, Lv0/g;->d:[Lv0/e;

    .line 6
    iput-byte v0, p0, Lv0/g;->e:B

    const/4 v1, 0x2

    new-array v2, v1, [Lv0/c;

    .line 7
    iput-object v2, p0, Lv0/g;->f:[Lv0/c;

    .line 8
    iput-byte v0, p0, Lv0/g;->g:B

    new-array v0, v1, [Lv0/o;

    .line 9
    iput-object v0, p0, Lv0/g;->h:[Lv0/o;

    return-void
.end method
