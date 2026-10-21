.class public final Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocaleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocaleInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final PREFIX_ARABIC:Ljava/lang/String; = "\u0627\u0644"


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mCountryMode:Z


# direct methods
.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCollator:Ljava/text/Collator;

    .line 9
    .line 10
    iput-boolean p2, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    .line 11
    .line 12
    return-void
.end method

.method private removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ar"

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string/jumbo p1, "\u0627\u0644"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    return-object p2
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCollator:Ljava/text/Collator;

    .line 4
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    invoke-virtual {p1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    invoke-virtual {p2, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    check-cast p2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->compare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result p1

    return p1
.end method
