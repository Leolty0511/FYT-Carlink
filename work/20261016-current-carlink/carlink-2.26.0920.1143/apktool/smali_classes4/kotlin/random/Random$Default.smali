.class public final Lkotlin/random/Random$Default;
.super La0/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/Random$Default$Serialized;
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/d;)V
    .locals 0

    invoke-direct {p0}, La0/d;-><init>()V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/random/Random$Default$Serialized;->INSTANCE:Lkotlin/random/Random$Default$Serialized;

    return-object v0
.end method


# virtual methods
.method public nextInt()I
    .locals 1

    invoke-static {}, La0/d;->access$getDefaultRandom$cp()La0/d;

    move-result-object v0

    invoke-virtual {v0}, La0/d;->nextInt()I

    move-result v0

    return v0
.end method
