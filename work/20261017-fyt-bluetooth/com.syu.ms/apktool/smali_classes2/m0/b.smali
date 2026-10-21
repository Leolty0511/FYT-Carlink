.class public Lm0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:Lm0/a;

.field public static final d:[I

.field public static e:I

.field public static f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm0/a;

    invoke-direct {v0}, Lm0/a;-><init>()V

    sput-object v0, Lm0/b;->c:Lm0/a;

    const/16 v0, 0x78

    new-array v0, v0, [I

    .line 2
    sput-object v0, Lm0/b;->d:[I

    return-void
.end method
