.class public Ld1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Ld1/g;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static final j:[I

.field public static k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld1/g$a;

    invoke-direct {v0}, Ld1/g$a;-><init>()V

    sput-object v0, Ld1/d;->b:Ld1/g;

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 2
    sput-object v0, Ld1/d;->j:[I

    return-void
.end method
