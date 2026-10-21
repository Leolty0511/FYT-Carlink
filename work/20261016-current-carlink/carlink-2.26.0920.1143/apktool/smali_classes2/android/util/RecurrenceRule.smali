.class public Landroid/util/RecurrenceRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/RecurrenceRule$RecurringIterator;,
        Landroid/util/RecurrenceRule$NonrecurringIterator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/RecurrenceRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "RecurrenceRule"

.field private static final VERSION_INIT:I

.field public static sClock:Ljava/time/Clock;


# instance fields
.field public final end:Ljava/time/ZonedDateTime;

.field public final period:Ljava/time/Period;

.field public final start:Ljava/time/ZonedDateTime;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/e;->l()Ljava/time/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    .line 6
    .line 7
    new-instance v0, Landroid/util/RecurrenceRule$1;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/RecurrenceRule$1;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroid/util/RecurrenceRule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object p1

    iput-object p1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/util/RecurrenceRule$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/util/RecurrenceRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 13
    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 14
    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object p1

    iput-object p1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 15
    :goto_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v1, "Unknown version "

    .line 16
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 4
    iput-object p2, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 5
    iput-object p3, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    return-void
.end method

.method public static buildNever()Landroid/util/RecurrenceRule;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/util/RecurrenceRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static buildRecurringMonthly(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/e;->s(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Landroid/app/e;->t(Ljava/time/ZonedDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/app/e;->m(Ljava/time/ZonedDateTime;)Ljava/time/LocalDate;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/util/a;->k(Ljava/time/LocalDate;)Ljava/time/LocalDate;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/util/a;->B(Ljava/time/LocalDate;)Ljava/time/LocalDate;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, p0}, Landroid/util/a;->l(Ljava/time/LocalDate;I)Ljava/time/LocalDate;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {}, Landroid/util/a;->m()Ljava/time/LocalTime;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p0, v0, p1}, Landroid/util/a;->q(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance p1, Landroid/util/RecurrenceRule;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {}, Landroid/app/e;->o()Ljava/time/Period;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {p1, p0, v0, v1}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method

.method public static convertPeriod(Ljava/time/Period;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Landroid/app/e;->c(Ljava/time/Period;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static convertPeriod(Ljava/lang/String;)Ljava/time/Period;
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/app/e;->p(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Landroid/app/e;->d(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/app/e;->r(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public cycleIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/time/ZonedDateTime;",
            "Ljava/time/ZonedDateTime;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/RecurrenceRule$RecurringIterator;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/util/RecurrenceRule$RecurringIterator;-><init>(Landroid/util/RecurrenceRule;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Landroid/util/RecurrenceRule$NonrecurringIterator;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/util/RecurrenceRule$NonrecurringIterator;-><init>(Landroid/util/RecurrenceRule;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/util/RecurrenceRule;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/util/RecurrenceRule;

    .line 7
    .line 8
    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 9
    .line 10
    iget-object v2, p1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 11
    .line 12
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 19
    .line 20
    iget-object v2, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 21
    .line 22
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 29
    .line 30
    iget-object p1, p1, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 31
    .line 32
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public isMonthly()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Landroid/app/e;->a(Ljava/time/Period;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/app/e;->z(Ljava/time/Period;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/app/e;->C(Ljava/time/Period;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RecurrenceRule{start="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " end="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " period="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string/jumbo v1, "}"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 20
    .line 21
    invoke-static {p2}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
