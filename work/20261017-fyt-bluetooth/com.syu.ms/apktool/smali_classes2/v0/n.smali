.class public Lv0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:[I

.field public c:[I

.field public d:[Lv0/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lv0/n;->a:[B

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lv0/n;->b:[I

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lv0/n;->c:[I

    const/16 v0, 0xc

    new-array v0, v0, [Lv0/a;

    .line 5
    iput-object v0, p0, Lv0/n;->d:[Lv0/a;

    return-void
.end method
