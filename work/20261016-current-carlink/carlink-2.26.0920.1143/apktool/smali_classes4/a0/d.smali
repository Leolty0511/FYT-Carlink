.class public abstract La0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Default:Lkotlin/random/Random$Default;

.field public static final b:La0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/random/Random$Default;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/random/Random$Default;-><init>(Lkotlin/jvm/internal/d;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, La0/d;->Default:Lkotlin/random/Random$Default;

    .line 8
    .line 9
    sget-object v0, Lw/c;->a:Lw/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lw/b;->b()La0/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, La0/d;->b:La0/d;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDefaultRandom$cp()La0/d;
    .locals 1

    sget-object v0, La0/d;->b:La0/d;

    return-object v0
.end method


# virtual methods
.method public abstract nextInt()I
.end method
