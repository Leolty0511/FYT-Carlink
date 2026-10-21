.class public Lc1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:Lc1/p;

.field public static final d:[I

.field public static e:I

.field public static f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc1/p;

    invoke-direct {v0}, Lc1/p;-><init>()V

    sput-object v0, Lc1/a;->c:Lc1/p;

    const/16 v0, 0x258

    new-array v0, v0, [I

    .line 2
    sput-object v0, Lc1/a;->d:[I

    const/4 v0, 0x0

    .line 3
    sput v0, Lc1/a;->f:I

    return-void
.end method
